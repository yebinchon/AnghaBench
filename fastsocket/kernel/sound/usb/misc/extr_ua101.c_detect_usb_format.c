
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct usb_endpoint_descriptor {int wMaxPacketSize; } ;
struct uac_format_type_i_discrete_descriptor {int bSubframeSize; int bBitResolution; int bNrChannels; int * tSamFreq; } ;
struct TYPE_11__ {int channels; int frame_bytes; void* max_packet_bytes; int usb_pipe; } ;
struct TYPE_8__ {int channels; int frame_bytes; void* max_packet_bytes; int usb_pipe; } ;
struct ua101 {unsigned int rate; int packets_per_second; TYPE_4__ playback; TYPE_5__* dev; TYPE_7__** intf; TYPE_1__ capture; int format_bit; } ;
struct TYPE_13__ {TYPE_3__* altsetting; } ;
struct TYPE_12__ {int speed; int dev; } ;
struct TYPE_10__ {TYPE_2__* endpoint; } ;
struct TYPE_9__ {struct usb_endpoint_descriptor desc; } ;


 int ENXIO ;
 size_t INTF_CAPTURE ;
 size_t INTF_PLAYBACK ;
 int SNDRV_PCM_FMTBIT_S24_3LE ;
 int SNDRV_PCM_FMTBIT_S32_LE ;


 void* combine_triple (int ) ;
 int dev_err (int *,char*,...) ;
 struct uac_format_type_i_discrete_descriptor* find_format_descriptor (TYPE_7__*) ;
 void* le16_to_cpu (int ) ;
 int usb_endpoint_is_isoc_in (struct usb_endpoint_descriptor const*) ;
 int usb_endpoint_is_isoc_out (struct usb_endpoint_descriptor const*) ;
 int usb_endpoint_num (struct usb_endpoint_descriptor const*) ;
 int usb_rcvisocpipe (TYPE_5__*,int ) ;
 int usb_sndisocpipe (TYPE_5__*,int ) ;

__attribute__((used)) static int detect_usb_format(struct ua101 *ua)
{
 const struct uac_format_type_i_discrete_descriptor *fmt_capture;
 const struct uac_format_type_i_discrete_descriptor *fmt_playback;
 const struct usb_endpoint_descriptor *epd;
 unsigned int rate2;

 fmt_capture = find_format_descriptor(ua->intf[INTF_CAPTURE]);
 fmt_playback = find_format_descriptor(ua->intf[INTF_PLAYBACK]);
 if (!fmt_capture || !fmt_playback)
  return -ENXIO;

 switch (fmt_capture->bSubframeSize) {
 case 3:
  ua->format_bit = SNDRV_PCM_FMTBIT_S24_3LE;
  break;
 case 4:
  ua->format_bit = SNDRV_PCM_FMTBIT_S32_LE;
  break;
 default:
  dev_err(&ua->dev->dev, "sample width is not 24 or 32 bits\n");
  return -ENXIO;
 }
 if (fmt_capture->bSubframeSize != fmt_playback->bSubframeSize) {
  dev_err(&ua->dev->dev,
   "playback/capture sample widths do not match\n");
  return -ENXIO;
 }

 if (fmt_capture->bBitResolution != 24 ||
     fmt_playback->bBitResolution != 24) {
  dev_err(&ua->dev->dev, "sample width is not 24 bits\n");
  return -ENXIO;
 }

 ua->rate = combine_triple(fmt_capture->tSamFreq[0]);
 rate2 = combine_triple(fmt_playback->tSamFreq[0]);
 if (ua->rate != rate2) {
  dev_err(&ua->dev->dev,
   "playback/capture rates do not match: %u/%u\n",
   rate2, ua->rate);
  return -ENXIO;
 }

 switch (ua->dev->speed) {
 case 129:
  ua->packets_per_second = 1000;
  break;
 case 128:
  ua->packets_per_second = 8000;
  break;
 default:
  dev_err(&ua->dev->dev, "unknown device speed\n");
  return -ENXIO;
 }

 ua->capture.channels = fmt_capture->bNrChannels;
 ua->playback.channels = fmt_playback->bNrChannels;
 ua->capture.frame_bytes =
  fmt_capture->bSubframeSize * ua->capture.channels;
 ua->playback.frame_bytes =
  fmt_playback->bSubframeSize * ua->playback.channels;

 epd = &ua->intf[INTF_CAPTURE]->altsetting[1].endpoint[0].desc;
 if (!usb_endpoint_is_isoc_in(epd)) {
  dev_err(&ua->dev->dev, "invalid capture endpoint\n");
  return -ENXIO;
 }
 ua->capture.usb_pipe = usb_rcvisocpipe(ua->dev, usb_endpoint_num(epd));
 ua->capture.max_packet_bytes = le16_to_cpu(epd->wMaxPacketSize);

 epd = &ua->intf[INTF_PLAYBACK]->altsetting[1].endpoint[0].desc;
 if (!usb_endpoint_is_isoc_out(epd)) {
  dev_err(&ua->dev->dev, "invalid playback endpoint\n");
  return -ENXIO;
 }
 ua->playback.usb_pipe = usb_sndisocpipe(ua->dev, usb_endpoint_num(epd));
 ua->playback.max_packet_bytes = le16_to_cpu(epd->wMaxPacketSize);
 return 0;
}

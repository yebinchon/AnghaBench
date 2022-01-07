
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_1__* pcm; int * private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct snd_line6_pcm {int buffer_in; int period_in; } ;
struct TYPE_2__ {int * private_data; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int LINE6_ISO_BUFFERS ;
 int LINE6_ISO_PACKETS ;
 int LINE6_ISO_PACKET_SIZE_MAX ;
 int dev_err (int ,char*) ;
 int kmalloc (int,int ) ;
 int params_buffer_bytes (struct snd_pcm_hw_params*) ;
 int params_period_bytes (struct snd_pcm_hw_params*) ;
 int s2m (struct snd_pcm_substream*) ;
 int snd_pcm_lib_malloc_pages (struct snd_pcm_substream*,int ) ;
 struct snd_line6_pcm* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_line6_capture_hw_params(struct snd_pcm_substream *substream,
           struct snd_pcm_hw_params *hw_params)
{
 int ret;
 struct snd_line6_pcm *line6pcm = snd_pcm_substream_chip(substream);



 if (line6pcm == ((void*)0)) {
  if (substream->pcm == ((void*)0))
   return -ENOMEM;
  if (substream->pcm->private_data == ((void*)0))
   return -ENOMEM;
  substream->private_data = substream->pcm->private_data;
  line6pcm = snd_pcm_substream_chip(substream);
 }


 ret = snd_pcm_lib_malloc_pages(substream,
           params_buffer_bytes(hw_params));
 if (ret < 0)
  return ret;

 line6pcm->period_in = params_period_bytes(hw_params);
 line6pcm->buffer_in = kmalloc(LINE6_ISO_BUFFERS * LINE6_ISO_PACKETS * LINE6_ISO_PACKET_SIZE_MAX, GFP_KERNEL);

 if (!line6pcm->buffer_in) {
  dev_err(s2m(substream), "cannot malloc buffer_in\n");
  return -ENOMEM;
 }

 return 0;
}

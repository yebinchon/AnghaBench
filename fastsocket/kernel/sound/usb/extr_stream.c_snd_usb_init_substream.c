
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_usb_substream {int direction; int ep_num; int fmt_type; int num_formats; int formats; int fmt_list; int txfr_quirk; int dev; struct snd_usb_stream* stream; int lock; } ;
struct snd_usb_stream {int pcm; TYPE_1__* chip; struct snd_usb_substream* substream; } ;
struct audioformat {int endpoint; int fmt_type; int formats; int list; } ;
struct TYPE_2__ {int txfr_quirk; int dev; } ;


 int INIT_LIST_HEAD (int *) ;
 int list_add_tail (int *,int *) ;
 int snd_usb_set_pcm_ops (int ,int) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static void snd_usb_init_substream(struct snd_usb_stream *as,
       int stream,
       struct audioformat *fp)
{
 struct snd_usb_substream *subs = &as->substream[stream];

 INIT_LIST_HEAD(&subs->fmt_list);
 spin_lock_init(&subs->lock);

 subs->stream = as;
 subs->direction = stream;
 subs->dev = as->chip->dev;
 subs->txfr_quirk = as->chip->txfr_quirk;

 snd_usb_set_pcm_ops(as->pcm, stream);

 list_add_tail(&fp->list, &subs->fmt_list);
 subs->formats |= fp->formats;
 subs->num_formats++;
 subs->fmt_type = fp->fmt_type;
 subs->ep_num = fp->endpoint;
}

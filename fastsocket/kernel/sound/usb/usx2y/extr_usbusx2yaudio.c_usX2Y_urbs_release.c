
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_usX2Y_substream {int * tmpbuf; TYPE_1__* usX2Y; scalar_t__ urb; int endpoint; } ;
struct TYPE_2__ {struct snd_usX2Y_substream** subs; } ;


 int NRURBS ;
 size_t SNDRV_PCM_STREAM_PLAYBACK ;
 int kfree (int *) ;
 int snd_printdd (char*,int ) ;
 int usX2Y_urb_release (scalar_t__,int) ;

__attribute__((used)) static void usX2Y_urbs_release(struct snd_usX2Y_substream *subs)
{
 int i;
 snd_printdd("usX2Y_urbs_release() %i\n", subs->endpoint);
 for (i = 0; i < NRURBS; i++)
  usX2Y_urb_release(subs->urb + i,
      subs != subs->usX2Y->subs[SNDRV_PCM_STREAM_PLAYBACK]);

 kfree(subs->tmpbuf);
 subs->tmpbuf = ((void*)0);
}

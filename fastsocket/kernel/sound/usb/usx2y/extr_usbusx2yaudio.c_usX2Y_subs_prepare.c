
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_usX2Y_substream {scalar_t__ transfer_done; scalar_t__ hwptr_done; scalar_t__ hwptr; int * urb; int endpoint; } ;


 int snd_printdd (char*,struct snd_usX2Y_substream*,int ,int ,int ) ;

__attribute__((used)) static void usX2Y_subs_prepare(struct snd_usX2Y_substream *subs)
{
 snd_printdd("usX2Y_substream_prepare(%p) ep=%i urb0=%p urb1=%p\n",
      subs, subs->endpoint, subs->urb[0], subs->urb[1]);

 subs->hwptr = 0;
 subs->hwptr_done = 0;
 subs->transfer_done = 0;
}

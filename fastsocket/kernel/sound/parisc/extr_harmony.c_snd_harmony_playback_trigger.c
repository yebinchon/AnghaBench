
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct snd_pcm_substream {int dummy; } ;
struct TYPE_7__ {int addr; } ;
struct TYPE_8__ {int playing; scalar_t__ capturing; } ;
struct TYPE_6__ {int addr; } ;
struct TYPE_5__ {int addr; } ;
struct snd_harmony {int lock; TYPE_3__ sdma; TYPE_4__ st; TYPE_2__ gdma; TYPE_1__ pbuf; } ;


 int EBUSY ;
 int EINVAL ;
 int HARMONY_PNXTADD ;
 int HARMONY_RNXTADD ;





 int harmony_disable_interrupts (struct snd_harmony*) ;
 int harmony_enable_interrupts (struct snd_harmony*) ;
 int harmony_mute (struct snd_harmony*) ;
 int harmony_unmute (struct snd_harmony*) ;
 int harmony_write (struct snd_harmony*,int ,int ) ;
 int snd_BUG () ;
 struct snd_harmony* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int
snd_harmony_playback_trigger(struct snd_pcm_substream *ss, int cmd)
{
 struct snd_harmony *h = snd_pcm_substream_chip(ss);

 if (h->st.capturing)
  return -EBUSY;

 spin_lock(&h->lock);
 switch (cmd) {
 case 130:
  h->st.playing = 1;
  harmony_write(h, HARMONY_PNXTADD, h->pbuf.addr);
  harmony_write(h, HARMONY_RNXTADD, h->gdma.addr);
  harmony_unmute(h);
  harmony_enable_interrupts(h);
  break;
 case 129:
  h->st.playing = 0;
  harmony_mute(h);
  harmony_write(h, HARMONY_PNXTADD, h->sdma.addr);
  harmony_disable_interrupts(h);
  break;
 case 132:
 case 131:
 case 128:
 default:
  spin_unlock(&h->lock);
  snd_BUG();
  return -EINVAL;
 }
 spin_unlock(&h->lock);

 return 0;
}

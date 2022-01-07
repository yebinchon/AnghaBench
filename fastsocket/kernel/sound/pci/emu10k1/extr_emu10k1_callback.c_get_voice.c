
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_emux_voice {scalar_t__ ch; } ;
struct snd_emux_port {int dummy; } ;
struct snd_emux {int num_voices; struct snd_emux_voice* voices; struct snd_emu10k1* hw; } ;
struct snd_emu10k1_voice {scalar_t__ number; } ;
struct snd_emu10k1 {int dummy; } ;
struct best_voice {size_t voice; } ;


 int EMU10K1_SYNTH ;
 int V_END ;
 int lookup_voices (struct snd_emux*,struct snd_emu10k1*,struct best_voice*,int ) ;
 scalar_t__ snd_emu10k1_voice_alloc (struct snd_emu10k1*,int ,int,struct snd_emu10k1_voice**) ;

__attribute__((used)) static struct snd_emux_voice *
get_voice(struct snd_emux *emu, struct snd_emux_port *port)
{
 struct snd_emu10k1 *hw;
 struct snd_emux_voice *vp;
 struct best_voice best[V_END];
 int i;

 hw = emu->hw;

 lookup_voices(emu, hw, best, 0);
 for (i = 0; i < V_END; i++) {
  if (best[i].voice >= 0) {
   vp = &emu->voices[best[i].voice];
   if (vp->ch < 0) {

    struct snd_emu10k1_voice *hwvoice;
    if (snd_emu10k1_voice_alloc(hw, EMU10K1_SYNTH, 1, &hwvoice) < 0 || hwvoice == ((void*)0))
     continue;
    vp->ch = hwvoice->number;
    emu->num_voices++;
   }
   return vp;
  }
 }


 return ((void*)0);
}

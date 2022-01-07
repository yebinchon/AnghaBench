
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_emu10k1 {int ctl_attn; int ctl_send_volume; int ctl_send_routing; } ;


 int snd_emu10k1_pcm_mixer_notify1 (struct snd_emu10k1*,int ,int,int) ;

__attribute__((used)) static void snd_emu10k1_pcm_mixer_notify(struct snd_emu10k1 *emu, int idx, int activate)
{
 snd_emu10k1_pcm_mixer_notify1(emu, emu->ctl_send_routing, idx, activate);
 snd_emu10k1_pcm_mixer_notify1(emu, emu->ctl_send_volume, idx, activate);
 snd_emu10k1_pcm_mixer_notify1(emu, emu->ctl_attn, idx, activate);
}

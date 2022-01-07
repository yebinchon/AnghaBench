
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_trident_pcm_mixer {int dummy; } ;
struct snd_trident {int ctl_cvol; int card; int ctl_rvol; int ctl_pan; int ctl_vol; } ;


 int snd_trident_notify_pcm_change1 (int ,int ,int,int) ;

__attribute__((used)) static void snd_trident_notify_pcm_change(struct snd_trident *trident,
       struct snd_trident_pcm_mixer *tmix,
       int num, int activate)
{
 snd_trident_notify_pcm_change1(trident->card, trident->ctl_vol, num, activate);
 snd_trident_notify_pcm_change1(trident->card, trident->ctl_pan, num, activate);
 snd_trident_notify_pcm_change1(trident->card, trident->ctl_rvol, num, activate);
 snd_trident_notify_pcm_change1(trident->card, trident->ctl_cvol, num, activate);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kcontrol_new {unsigned int index; char* name; } ;
struct snd_kcontrol {int dummy; } ;
struct snd_card {int dummy; } ;
struct hdspm {struct snd_kcontrol** playback_mixer_ctls; scalar_t__ is_aes32; } ;


 unsigned int ARRAY_SIZE (struct snd_kcontrol_new*) ;
 struct snd_kcontrol_new HDSPM_AES_SYNC_CHECK (char*,int ) ;
 unsigned int HDSPM_MAX_CHANNELS ;
 int snd_ctl_add (struct snd_card*,struct snd_kcontrol*) ;
 struct snd_kcontrol* snd_ctl_new1 (struct snd_kcontrol_new*,struct hdspm*) ;
 struct snd_kcontrol_new* snd_hdspm_controls_aes32 ;
 struct snd_kcontrol_new* snd_hdspm_controls_madi ;
 struct snd_kcontrol_new snd_hdspm_playback_mixer ;

__attribute__((used)) static int snd_hdspm_create_controls(struct snd_card *card, struct hdspm * hdspm)
{
 unsigned int idx, limit;
 int err;
 struct snd_kcontrol *kctl;


 if (hdspm->is_aes32) {
  struct snd_kcontrol_new aes_sync_ctl =
   HDSPM_AES_SYNC_CHECK("AES Lock Status", 0);

  for (idx = 0; idx < ARRAY_SIZE(snd_hdspm_controls_aes32);
       idx++) {
   err = snd_ctl_add(card,
       snd_ctl_new1(&snd_hdspm_controls_aes32[idx],
             hdspm));
   if (err < 0)
    return err;
  }
  for (idx = 1; idx <= 8; idx++) {
   aes_sync_ctl.index = idx;
   err = snd_ctl_add(card,
       snd_ctl_new1(&aes_sync_ctl, hdspm));
   if (err < 0)
    return err;
  }
 } else {
  for (idx = 0; idx < ARRAY_SIZE(snd_hdspm_controls_madi);
       idx++) {
   err = snd_ctl_add(card,
       snd_ctl_new1(&snd_hdspm_controls_madi[idx],
             hdspm));
   if (err < 0)
    return err;
  }
 }







 snd_hdspm_playback_mixer.name = "Chn";
 limit = HDSPM_MAX_CHANNELS;







 for (idx = 0; idx < limit; ++idx) {
  snd_hdspm_playback_mixer.index = idx + 1;
  kctl = snd_ctl_new1(&snd_hdspm_playback_mixer, hdspm);
  err = snd_ctl_add(card, kctl);
  if (err < 0)
   return err;
  hdspm->playback_mixer_ctls[idx] = kctl;
 }

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct snd_card {int dummy; } ;
struct hdsp {scalar_t__ io_type; struct snd_kcontrol* spdif_ctl; } ;
struct TYPE_7__ {char* name; int index; } ;


 unsigned int ARRAY_SIZE (TYPE_1__*) ;
 scalar_t__ Digiface ;
 scalar_t__ H9632 ;
 scalar_t__ H9652 ;
 int snd_ctl_add (struct snd_card*,struct snd_kcontrol*) ;
 struct snd_kcontrol* snd_ctl_new1 (TYPE_1__*,struct hdsp*) ;
 TYPE_1__* snd_hdsp_9632_controls ;
 TYPE_1__ snd_hdsp_96xx_aeb ;
 TYPE_1__ snd_hdsp_adat_sync_check ;
 TYPE_1__* snd_hdsp_controls ;

__attribute__((used)) static int snd_hdsp_create_controls(struct snd_card *card, struct hdsp *hdsp)
{
 unsigned int idx;
 int err;
 struct snd_kcontrol *kctl;

 for (idx = 0; idx < ARRAY_SIZE(snd_hdsp_controls); idx++) {
  if ((err = snd_ctl_add(card, kctl = snd_ctl_new1(&snd_hdsp_controls[idx], hdsp))) < 0)
   return err;
  if (idx == 1)
   hdsp->spdif_ctl = kctl;
 }


 snd_hdsp_adat_sync_check.name = "ADAT Lock Status";
 snd_hdsp_adat_sync_check.index = 1;
 if ((err = snd_ctl_add (card, kctl = snd_ctl_new1(&snd_hdsp_adat_sync_check, hdsp))))
  return err;
 if (hdsp->io_type == Digiface || hdsp->io_type == H9652) {
  for (idx = 1; idx < 3; ++idx) {
   snd_hdsp_adat_sync_check.index = idx+1;
   if ((err = snd_ctl_add (card, kctl = snd_ctl_new1(&snd_hdsp_adat_sync_check, hdsp))))
    return err;
  }
 }


 if (hdsp->io_type == H9632) {
  for (idx = 0; idx < ARRAY_SIZE(snd_hdsp_9632_controls); idx++) {
   if ((err = snd_ctl_add(card, kctl = snd_ctl_new1(&snd_hdsp_9632_controls[idx], hdsp))) < 0)
    return err;
  }
 }


 if (hdsp->io_type == H9632 || hdsp->io_type == H9652) {
  if ((err = snd_ctl_add(card, kctl = snd_ctl_new1(&snd_hdsp_96xx_aeb, hdsp))) < 0)
    return err;
 }

 return 0;
}

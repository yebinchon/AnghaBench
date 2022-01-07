
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_seq_oss_reg {struct snd_opl3* private_data; int oper; int nvoices; int subtype; int type; } ;
struct snd_seq_device {int name; } ;
struct snd_opl3 {scalar_t__ hardware; int card; struct snd_seq_device* oss_seq_dev; } ;


 int FM_TYPE_ADLIB ;
 int FM_TYPE_OPL3 ;
 int MAX_OPL2_VOICES ;
 int MAX_OPL3_VOICES ;
 scalar_t__ OPL3_HW_OPL3 ;
 struct snd_seq_oss_reg* SNDRV_SEQ_DEVICE_ARGPTR (struct snd_seq_device*) ;
 int SNDRV_SEQ_DEV_ID_OSS ;
 int SYNTH_TYPE_FM ;
 int oss_callback ;
 int snd_device_register (int ,struct snd_seq_device*) ;
 scalar_t__ snd_opl3_oss_create_port (struct snd_opl3*) ;
 scalar_t__ snd_seq_device_new (int ,int ,int ,int,struct snd_seq_device**) ;
 int strlcpy (int ,char*,int) ;

void snd_opl3_init_seq_oss(struct snd_opl3 *opl3, char *name)
{
 struct snd_seq_oss_reg *arg;
 struct snd_seq_device *dev;

 if (snd_seq_device_new(opl3->card, 0, SNDRV_SEQ_DEV_ID_OSS,
          sizeof(struct snd_seq_oss_reg), &dev) < 0)
  return;

 opl3->oss_seq_dev = dev;
 strlcpy(dev->name, name, sizeof(dev->name));
 arg = SNDRV_SEQ_DEVICE_ARGPTR(dev);
 arg->type = SYNTH_TYPE_FM;
 if (opl3->hardware < OPL3_HW_OPL3) {
  arg->subtype = FM_TYPE_ADLIB;
  arg->nvoices = MAX_OPL2_VOICES;
 } else {
  arg->subtype = FM_TYPE_OPL3;
  arg->nvoices = MAX_OPL3_VOICES;
 }
 arg->oper = oss_callback;
 arg->private_data = opl3;

 if (snd_opl3_oss_create_port(opl3)) {

  snd_device_register(opl3->card, dev);
 }
}

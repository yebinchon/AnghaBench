
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_opl3 {int hardware; int seq_dev_num; TYPE_2__* seq_dev; struct snd_hwdep* hwdep; struct snd_card* card; } ;
struct TYPE_4__ {int release; int write; int ioctl; int open; } ;
struct snd_hwdep {int exclusive; char* name; char* id; TYPE_1__ ops; int iface; int oss_dev; int oss_type; struct snd_opl3* private_data; } ;
struct snd_card {int number; } ;
struct TYPE_5__ {char* name; } ;


 int OPL3_HW_MASK ;



 int SNDRV_HWDEP_IFACE_OPL2 ;
 int SNDRV_HWDEP_IFACE_OPL3 ;
 int SNDRV_HWDEP_IFACE_OPL4 ;
 int SNDRV_OSS_DEVICE_TYPE_DMFM ;
 scalar_t__ SNDRV_SEQ_DEVICE_ARGPTR (TYPE_2__*) ;
 int SNDRV_SEQ_DEV_ID_OPL3 ;
 int snd_device_free (struct snd_card*,struct snd_opl3*) ;
 int snd_hwdep_new (struct snd_card*,char*,int,struct snd_hwdep**) ;
 int snd_opl3_ioctl ;
 int snd_opl3_open ;
 int snd_opl3_release ;
 int snd_opl3_write ;
 scalar_t__ snd_seq_device_new (struct snd_card*,int,int ,int,TYPE_2__**) ;
 int sprintf (int ,char*,int) ;
 int strcpy (char*,char*) ;

int snd_opl3_hwdep_new(struct snd_opl3 * opl3,
         int device, int seq_device,
         struct snd_hwdep ** rhwdep)
{
 struct snd_hwdep *hw;
 struct snd_card *card = opl3->card;
 int err;

 if (rhwdep)
  *rhwdep = ((void*)0);



 if ((err = snd_hwdep_new(card, "OPL2/OPL3", device, &hw)) < 0) {
  snd_device_free(card, opl3);
  return err;
 }
 hw->private_data = opl3;
 hw->exclusive = 1;






 strcpy(hw->name, hw->id);
 switch (opl3->hardware & OPL3_HW_MASK) {
 case 130:
  strcpy(hw->name, "OPL2 FM");
  hw->iface = SNDRV_HWDEP_IFACE_OPL2;
  break;
 case 129:
  strcpy(hw->name, "OPL3 FM");
  hw->iface = SNDRV_HWDEP_IFACE_OPL3;
  break;
 case 128:
  strcpy(hw->name, "OPL4 FM");
  hw->iface = SNDRV_HWDEP_IFACE_OPL4;
  break;
 }


 hw->ops.open = snd_opl3_open;
 hw->ops.ioctl = snd_opl3_ioctl;
 hw->ops.write = snd_opl3_write;
 hw->ops.release = snd_opl3_release;

 opl3->hwdep = hw;
 opl3->seq_dev_num = seq_device;







 if (rhwdep)
  *rhwdep = hw;
 return 0;
}

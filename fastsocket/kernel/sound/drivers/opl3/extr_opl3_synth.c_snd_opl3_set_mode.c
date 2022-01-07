
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_opl3 {scalar_t__ hardware; int fm_mode; int (* command ) (struct snd_opl3*,int,int) ;} ;


 int EINVAL ;
 scalar_t__ OPL3_HW_OPL3 ;
 int OPL3_REG_CONNECTION_SELECT ;
 int OPL3_RIGHT ;
 int SNDRV_DM_FM_MODE_OPL3 ;
 int stub1 (struct snd_opl3*,int,int) ;

__attribute__((used)) static int snd_opl3_set_mode(struct snd_opl3 * opl3, int mode)
{
 if ((mode == SNDRV_DM_FM_MODE_OPL3) && (opl3->hardware < OPL3_HW_OPL3))
  return -EINVAL;

 opl3->fm_mode = mode;
 if (opl3->hardware >= OPL3_HW_OPL3)
  opl3->command(opl3, OPL3_RIGHT | OPL3_REG_CONNECTION_SELECT, 0x00);

 return 0;
}

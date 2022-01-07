
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_cs46xx {int dummy; } ;
struct dsp_scb_descriptor {int parent_scb_ptr; } ;


 int EINVAL ;
 int _dsp_unlink_scb (struct snd_cs46xx*,struct dsp_scb_descriptor*) ;
 int cs46xx_dsp_scb_set_volume (struct snd_cs46xx*,struct dsp_scb_descriptor*,int ,int ) ;
 scalar_t__ snd_BUG_ON (int) ;

int cs46xx_src_unlink(struct snd_cs46xx *chip, struct dsp_scb_descriptor * src)
{
 if (snd_BUG_ON(!src->parent_scb_ptr))
  return -EINVAL;


 cs46xx_dsp_scb_set_volume (chip,src,0,0);

 _dsp_unlink_scb (chip,src);

 return 0;
}

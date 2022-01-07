
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vx_core {int chip_status; } ;


 int VX_STAT_IS_STALE ;
 int vx_write_one_cbit (struct vx_core*,int,unsigned int) ;

void vx_set_iec958_status(struct vx_core *chip, unsigned int bits)
{
 int i;

 if (chip->chip_status & VX_STAT_IS_STALE)
  return;

 for (i = 0; i < 32; i++)
  vx_write_one_cbit(chip, i, bits & (1 << i));
}

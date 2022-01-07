
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vx_core {int dummy; } ;
struct snd_vxpocket {scalar_t__ regDIALOG; scalar_t__ regCDSP; } ;



__attribute__((used)) static void vxp_reset_board(struct vx_core *_chip, int cold_reset)
{
 struct snd_vxpocket *chip = (struct snd_vxpocket *)_chip;

 chip->regCDSP = 0;
 chip->regDIALOG = 0;
}

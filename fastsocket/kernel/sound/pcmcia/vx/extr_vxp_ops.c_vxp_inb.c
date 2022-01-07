
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vx_core {int dummy; } ;


 unsigned char inb (int ) ;
 int vxp_reg_addr (struct vx_core*,int) ;

__attribute__((used)) static unsigned char vxp_inb(struct vx_core *chip, int offset)
{
 return inb(vxp_reg_addr(chip, offset));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vx_core {int dummy; } ;


 unsigned int inl (int ) ;
 int vx2_reg_addr (struct vx_core*,int) ;

__attribute__((used)) static unsigned int vx2_inl(struct vx_core *chip, int offset)
{
 return inl(vx2_reg_addr(chip, offset));
}

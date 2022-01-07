
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vx_core {int dummy; } ;


 int ICR ;
 int vx_outl (struct vx_core*,int ,int ) ;

__attribute__((used)) static inline void vx2_release_pseudo_dma(struct vx_core *chip)
{

 vx_outl(chip, ICR, 0);
}

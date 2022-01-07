
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vx_core {int dummy; } ;
struct snd_vx222 {unsigned long* port; } ;


 size_t* vx2_reg_index ;
 unsigned long* vx2_reg_offset ;

__attribute__((used)) static inline unsigned long vx2_reg_addr(struct vx_core *_chip, int reg)
{
 struct snd_vx222 *chip = (struct snd_vx222 *)_chip;
 return chip->port[vx2_reg_index[reg]] + vx2_reg_offset[reg];
}

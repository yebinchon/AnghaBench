
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ mapped_mmio_vaddr; } ;


 int in_be32 (scalar_t__) ;
 TYPE_1__ the_card ;

__attribute__((used)) static inline u32 read_reg(unsigned int reg)
{
 return in_be32(the_card.mapped_mmio_vaddr + reg);
}

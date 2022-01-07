
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ fpga; } ;


 int WDT_HW_TIMEOUT ;
 unsigned int in_be32 (scalar_t__) ;
 int out_be32 (scalar_t__,unsigned int) ;
 TYPE_1__ pikawdt_private ;

__attribute__((used)) static inline void pikawdt_reset(void)
{
 unsigned reset = in_be32(pikawdt_private.fpga + 0x14);

 reset |= (1 << 7) + (WDT_HW_TIMEOUT << 8);
 out_be32(pikawdt_private.fpga + 0x14, reset);
}

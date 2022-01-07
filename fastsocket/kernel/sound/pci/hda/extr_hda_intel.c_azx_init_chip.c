
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ addr; } ;
struct azx {int initialized; TYPE_1__ posbuf; int single_cmd; } ;


 int DPLBASE ;
 int DPUBASE ;
 int azx_init_cmd_io (struct azx*) ;
 int azx_int_clear (struct azx*) ;
 int azx_int_enable (struct azx*) ;
 int azx_reset (struct azx*,int) ;
 int azx_writel (struct azx*,int ,int ) ;
 int upper_32_bits (scalar_t__) ;

__attribute__((used)) static void azx_init_chip(struct azx *chip, int full_reset)
{
 if (chip->initialized)
  return;


 azx_reset(chip, full_reset);


 azx_int_clear(chip);
 azx_int_enable(chip);


 if (!chip->single_cmd)
  azx_init_cmd_io(chip);


 azx_writel(chip, DPLBASE, (u32)chip->posbuf.addr);
 azx_writel(chip, DPUBASE, upper_32_bits(chip->posbuf.addr));

 chip->initialized = 1;
}

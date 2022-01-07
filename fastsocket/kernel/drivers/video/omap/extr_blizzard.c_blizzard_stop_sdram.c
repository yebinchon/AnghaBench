
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BLIZZARD_MEM_BANK0_ACTIVATE ;
 int blizzard_write_reg (int ,int ) ;

__attribute__((used)) static void blizzard_stop_sdram(void)
{
 blizzard_write_reg(BLIZZARD_MEM_BANK0_ACTIVATE, 0);
}

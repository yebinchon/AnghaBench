
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (int ) ;
 int _save_regs (int ,int ) ;
 int blizzard_gen_regs ;
 int blizzard_pll_regs ;

__attribute__((used)) static void blizzard_save_all_regs(void)
{
 _save_regs(blizzard_pll_regs, ARRAY_SIZE(blizzard_pll_regs));
 _save_regs(blizzard_gen_regs, ARRAY_SIZE(blizzard_gen_regs));
}

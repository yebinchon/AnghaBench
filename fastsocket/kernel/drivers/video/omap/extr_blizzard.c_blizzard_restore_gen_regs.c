
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (int ) ;
 int _restore_regs (int ,int ) ;
 int blizzard_gen_regs ;

__attribute__((used)) static void blizzard_restore_gen_regs(void)
{
 _restore_regs(blizzard_gen_regs, ARRAY_SIZE(blizzard_gen_regs));
}

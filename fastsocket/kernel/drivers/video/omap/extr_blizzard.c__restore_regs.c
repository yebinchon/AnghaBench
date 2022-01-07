
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blizzard_reg_list {int start; int end; } ;


 int * blizzard_reg_cache ;
 int blizzard_write_reg (int,int ) ;

__attribute__((used)) static void _restore_regs(const struct blizzard_reg_list *list, int cnt)
{
 int i;

 for (i = 0; i < cnt; i++, list++) {
  int reg;
  for (reg = list->start; reg <= list->end; reg += 2)
   blizzard_write_reg(reg, blizzard_reg_cache[reg / 2]);
 }
}

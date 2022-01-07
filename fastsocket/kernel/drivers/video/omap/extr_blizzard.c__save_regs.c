
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blizzard_reg_list {int start; int end; } ;


 int blizzard_read_reg (int) ;
 int * blizzard_reg_cache ;

__attribute__((used)) static void _save_regs(const struct blizzard_reg_list *list, int cnt)
{
 int i;

 for (i = 0; i < cnt; i++, list++) {
  int reg;
  for (reg = list->start; reg <= list->end; reg += 2)
   blizzard_reg_cache[reg / 2] = blizzard_read_reg(reg);
 }
}

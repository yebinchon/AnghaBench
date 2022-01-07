
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symbol {int dummy; } ;
struct linetable_entry {int line; scalar_t__ pc; } ;
struct linetable {int nitems; struct linetable_entry* item; } ;
typedef scalar_t__ CORE_ADDR ;


 int INT_MAX ;
 int VAR_DOMAIN ;
 int find_pc_partial_function (scalar_t__,char**,scalar_t__*,scalar_t__*) ;
 scalar_t__ is_plausible_func_for_line (struct symbol*,int) ;
 struct symbol* standard_lookup (char*,int ) ;

__attribute__((used)) static int
nearest_line_number_in_linetable (struct linetable *linetable, int line_num)
{
  int i, len, best;

  if (line_num <= 0 || linetable == ((void*)0) || linetable->nitems == 0)
    return -1;
  len = linetable->nitems;

  i = 0;
  best = INT_MAX;
  while (i < len)
    {
      int k;
      struct linetable_entry *item = &(linetable->item[i]);

      if (item->line >= line_num && item->line < best)
 {
   char *func_name;
   CORE_ADDR start, end;

   func_name = ((void*)0);
   find_pc_partial_function (item->pc, &func_name, &start, &end);

   if (func_name != ((void*)0) && item->pc < end)
     {
       if (item->line == line_num)
  return line_num;
       else
  {
    struct symbol *sym =
      standard_lookup (func_name, VAR_DOMAIN);
    if (is_plausible_func_for_line (sym, line_num))
      best = item->line;
    else
      {
        do
   i += 1;
        while (i < len && linetable->item[i].pc < end);
        continue;
      }
  }
     }
 }

      i += 1;
    }

  return (best == INT_MAX) ? -1 : best;
}

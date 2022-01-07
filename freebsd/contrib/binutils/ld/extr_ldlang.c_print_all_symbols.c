
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct map_symbol_def {int entry; struct map_symbol_def* next; } ;
struct fat_user_section_struct {struct map_symbol_def* map_symbol_def_head; scalar_t__* map_symbol_def_tail; } ;
typedef int asection ;


 struct fat_user_section_struct* get_userdata (int *) ;
 int print_one_symbol (int ,int *) ;

__attribute__((used)) static void
print_all_symbols (asection *sec)
{
  struct fat_user_section_struct *ud = get_userdata (sec);
  struct map_symbol_def *def;

  if (!ud)
    return;

  *ud->map_symbol_def_tail = 0;
  for (def = ud->map_symbol_def_head; def; def = def->next)
    print_one_symbol (def->entry, sec);
}

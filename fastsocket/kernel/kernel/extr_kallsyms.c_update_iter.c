
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kallsym_iter {scalar_t__ pos; int nameoff; } ;
typedef scalar_t__ loff_t ;


 scalar_t__ get_ksymbol_core (struct kallsym_iter*) ;
 int get_ksymbol_mod (struct kallsym_iter*) ;
 scalar_t__ kallsyms_num_syms ;
 int reset_iter (struct kallsym_iter*,scalar_t__) ;

__attribute__((used)) static int update_iter(struct kallsym_iter *iter, loff_t pos)
{

 if (pos >= kallsyms_num_syms) {
  iter->pos = pos;
  return get_ksymbol_mod(iter);
 }


 if (pos != iter->pos)
  reset_iter(iter, pos);

 iter->nameoff += get_ksymbol_core(iter);
 iter->pos++;

 return 1;
}

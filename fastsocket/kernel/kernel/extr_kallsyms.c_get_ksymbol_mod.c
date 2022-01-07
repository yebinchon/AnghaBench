
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kallsym_iter {int exported; int module_name; int name; int type; int value; scalar_t__ pos; } ;


 scalar_t__ kallsyms_num_syms ;
 scalar_t__ module_get_kallsym (scalar_t__,int *,int *,int ,int ,int *) ;

__attribute__((used)) static int get_ksymbol_mod(struct kallsym_iter *iter)
{
 if (module_get_kallsym(iter->pos - kallsyms_num_syms, &iter->value,
    &iter->type, iter->name, iter->module_name,
    &iter->exported) < 0)
  return 0;
 return 1;
}

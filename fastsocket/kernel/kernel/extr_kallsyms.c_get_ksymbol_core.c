
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kallsym_iter {unsigned int nameoff; char* module_name; size_t pos; int name; int type; int value; } ;


 int * kallsyms_addresses ;
 unsigned int kallsyms_expand_symbol (unsigned int,int ) ;
 int kallsyms_get_symbol_type (unsigned int) ;

__attribute__((used)) static unsigned long get_ksymbol_core(struct kallsym_iter *iter)
{
 unsigned off = iter->nameoff;

 iter->module_name[0] = '\0';
 iter->value = kallsyms_addresses[iter->pos];

 iter->type = kallsyms_get_symbol_type(off);

 off = kallsyms_expand_symbol(off, iter->name);

 return off - iter->nameoff;
}

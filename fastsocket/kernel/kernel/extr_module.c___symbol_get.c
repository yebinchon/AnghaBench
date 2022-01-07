
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module {int dummy; } ;
struct kernel_symbol {scalar_t__ value; } ;


 struct kernel_symbol* find_symbol (char const*,struct module**,int *,int,int) ;
 int preempt_disable () ;
 int preempt_enable () ;
 scalar_t__ strong_try_module_get (struct module*) ;

void *__symbol_get(const char *symbol)
{
 struct module *owner;
 const struct kernel_symbol *sym;

 preempt_disable();
 sym = find_symbol(symbol, &owner, ((void*)0), 1, 1);
 if (sym && strong_try_module_get(owner))
  sym = ((void*)0);
 preempt_enable();

 return sym ? (void *)sym->value : ((void*)0);
}

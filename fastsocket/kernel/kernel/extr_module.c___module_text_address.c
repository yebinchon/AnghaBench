
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module {int core_text_size; int module_core; int init_text_size; int module_init; } ;


 struct module* __module_address (unsigned long) ;
 int within (unsigned long,int ,int ) ;

struct module *__module_text_address(unsigned long addr)
{
 struct module *mod = __module_address(addr);
 if (mod) {

  if (!within(addr, mod->module_init, mod->init_text_size)
      && !within(addr, mod->module_core, mod->core_text_size))
   mod = ((void*)0);
 }
 return mod;
}

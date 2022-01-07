
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct module {int module_core; int core_size; scalar_t__ refptr; scalar_t__ percpu; int args; int module_init; int num_kp; int kp; int name; } ;
struct TYPE_2__ {int mm; } ;


 int __unlink_module ;
 TYPE_1__* current ;
 int ddebug_remove_module (int ) ;
 int destroy_params (int ,int ) ;
 int kfree (int ) ;
 int lockdep_free_key_range (int ,int ) ;
 int mod_kobject_remove (struct module*) ;
 int module_arch_cleanup (struct module*) ;
 int module_free (struct module*,int ) ;
 int module_unload_free (struct module*) ;
 int percpu_modfree (scalar_t__) ;
 int remove_notes_attrs (struct module*) ;
 int remove_sect_attrs (struct module*) ;
 int stop_machine (int ,struct module*,int *) ;
 int trace_module_free (struct module*) ;
 int update_protections (int ) ;

__attribute__((used)) static void free_module(struct module *mod)
{
 trace_module_free(mod);


 stop_machine(__unlink_module, mod, ((void*)0));
 remove_notes_attrs(mod);
 remove_sect_attrs(mod);
 mod_kobject_remove(mod);


 ddebug_remove_module(mod->name);


 module_arch_cleanup(mod);


 module_unload_free(mod);


 destroy_params(mod->kp, mod->num_kp);


 module_free(mod, mod->module_init);
 kfree(mod->args);
 if (mod->percpu)
  percpu_modfree(mod->percpu);





 lockdep_free_key_range(mod->module_core, mod->core_size);


 module_free(mod, mod->module_core);




}

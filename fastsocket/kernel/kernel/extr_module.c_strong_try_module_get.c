
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module {scalar_t__ state; } ;


 int EBUSY ;
 int ENOENT ;
 scalar_t__ MODULE_STATE_COMING ;
 scalar_t__ try_module_get (struct module*) ;

__attribute__((used)) static inline int strong_try_module_get(struct module *mod)
{
 if (mod && mod->state == MODULE_STATE_COMING)
  return -EBUSY;
 if (try_module_get(mod))
  return 0;
 else
  return -ENOENT;
}

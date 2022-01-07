
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module {int dummy; } ;


 int do_exit (long) ;
 int module_put (struct module*) ;

void __module_put_and_exit(struct module *mod, long code)
{
 module_put(mod);
 do_exit(code);
}

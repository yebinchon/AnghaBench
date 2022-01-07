
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module {int list; } ;


 int list_del (int *) ;

__attribute__((used)) static int __unlink_module(void *_mod)
{
 struct module *mod = _mod;
 list_del(&mod->list);
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module {int dummy; } ;


 scalar_t__ strong_try_module_get (struct module*) ;

int use_module(struct module *a, struct module *b)
{
 return strong_try_module_get(b) == 0;
}

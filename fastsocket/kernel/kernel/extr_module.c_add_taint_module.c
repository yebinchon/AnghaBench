
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module {unsigned int taints; } ;


 int add_taint (unsigned int) ;

__attribute__((used)) static inline void add_taint_module(struct module *mod, unsigned flag)
{
 add_taint(flag);
 mod->taints |= (1U << flag);
}

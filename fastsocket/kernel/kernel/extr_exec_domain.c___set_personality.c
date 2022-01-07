
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct exec_domain {int module; } ;
struct TYPE_4__ {unsigned int personality; } ;
struct TYPE_3__ {struct exec_domain* exec_domain; } ;


 TYPE_2__* current ;
 TYPE_1__* current_thread_info () ;
 struct exec_domain* lookup_exec_domain (unsigned int) ;
 int module_put (int ) ;

int
__set_personality(unsigned int personality)
{
 struct exec_domain *ep, *oep;

 ep = lookup_exec_domain(personality);
 if (ep == current_thread_info()->exec_domain) {
  current->personality = personality;
  module_put(ep->module);
  return 0;
 }

 current->personality = personality;
 oep = current_thread_info()->exec_domain;
 current_thread_info()->exec_domain = ep;

 module_put(oep->module);
 return 0;
}

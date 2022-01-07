
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tracepoint_entry {int funcs; int name; } ;
struct tracepoint {int state; int funcs; int (* unregfunc ) () ;int (* regfunc ) () ;int name; } ;


 int WARN_ON (int) ;
 int rcu_assign_pointer (int ,int ) ;
 scalar_t__ strcmp (int ,int ) ;
 int stub1 () ;
 int stub2 () ;

__attribute__((used)) static void set_tracepoint(struct tracepoint_entry **entry,
 struct tracepoint *elem, int active)
{
 WARN_ON(strcmp((*entry)->name, elem->name) != 0);

 if (elem->regfunc && !elem->state && active)
  elem->regfunc();
 else if (elem->unregfunc && elem->state && !active)
  elem->unregfunc();
 rcu_assign_pointer(elem->funcs, (*entry)->funcs);
 elem->state = active;
}

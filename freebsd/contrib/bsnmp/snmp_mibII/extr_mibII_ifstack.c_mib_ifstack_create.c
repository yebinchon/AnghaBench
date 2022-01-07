
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int len; int * subs; } ;
struct mibifstack {TYPE_1__ index; } ;
struct mibif {int index; } ;


 int INSERT_OBJECT_OID (struct mibifstack*,int *) ;
 int get_ticks () ;
 struct mibifstack* malloc (int) ;
 int mib_ifstack_last_change ;
 int mibifstack_list ;

int
mib_ifstack_create(const struct mibif *lower, const struct mibif *upper)
{
 struct mibifstack *stack;

 if ((stack = malloc(sizeof(*stack))) == ((void*)0))
  return (-1);

 stack->index.len = 2;
 stack->index.subs[0] = upper ? upper->index : 0;
 stack->index.subs[1] = lower ? lower->index : 0;

 INSERT_OBJECT_OID(stack, &mibifstack_list);

 mib_ifstack_last_change = get_ticks();

 return (0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {unsigned int il_next; } ;
struct TYPE_2__ {int nodes; } ;
struct mempolicy {TYPE_1__ v; } ;


 unsigned int MAX_NUMNODES ;
 struct task_struct* current ;
 unsigned int first_node (int ) ;
 unsigned int next_node (unsigned int,int ) ;

__attribute__((used)) static unsigned interleave_nodes(struct mempolicy *policy)
{
 unsigned nid, next;
 struct task_struct *me = current;

 nid = me->il_next;
 next = next_node(nid, policy->v.nodes);
 if (next >= MAX_NUMNODES)
  next = first_node(policy->v.nodes);
 if (next < MAX_NUMNODES)
  me->il_next = next;
 return nid;
}

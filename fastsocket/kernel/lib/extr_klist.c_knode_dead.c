
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct klist_node {scalar_t__ n_klist; } ;


 unsigned long KNODE_DEAD ;

__attribute__((used)) static bool knode_dead(struct klist_node *knode)
{
 return (unsigned long)knode->n_klist & KNODE_DEAD;
}

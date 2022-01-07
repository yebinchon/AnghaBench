
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct observer_list {struct observer_list* observer; } ;


 int xfree (struct observer_list*) ;

__attribute__((used)) static void
xfree_observer_list_node (struct observer_list *node)
{
  xfree (node->observer);
  xfree (node);
}

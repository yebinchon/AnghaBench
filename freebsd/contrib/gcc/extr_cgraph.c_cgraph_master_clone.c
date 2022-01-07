
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgraph_node {struct cgraph_node* master_clone; int decl; } ;
typedef enum availability { ____Placeholder_availability } availability ;


 int AVAIL_NOT_AVAILABLE ;
 int AVAIL_OVERWRITABLE ;
 int cgraph_function_body_availability (struct cgraph_node*) ;
 struct cgraph_node* cgraph_node (int ) ;

struct cgraph_node *
cgraph_master_clone (struct cgraph_node *n)
{
  enum availability avail = cgraph_function_body_availability (n);

  if (avail == AVAIL_NOT_AVAILABLE || avail == AVAIL_OVERWRITABLE)
    return ((void*)0);

  if (!n->master_clone)
    n->master_clone = cgraph_node (n->decl);

  return n->master_clone;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* next; } ;
typedef TYPE_1__ mc_node ;


 TYPE_1__* mc_nodes ;
 int memset (TYPE_1__*,int ,int) ;
 TYPE_1__* res_alloc (int) ;

mc_node *
mc_add_node (void)
{
  mc_node *ret;

  ret = res_alloc (sizeof (mc_node));
  memset (ret, 0, sizeof (mc_node));
  if (! mc_nodes)
    mc_nodes = ret;
  else
    {
      mc_node *h = mc_nodes;

      while (h->next != ((void*)0))
 h = h->next;
      h->next = ret;
    }
  return ret;
}

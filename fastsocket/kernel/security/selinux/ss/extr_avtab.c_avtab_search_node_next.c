
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ source_type; scalar_t__ target_type; scalar_t__ target_class; int specified; } ;
struct avtab_node {TYPE_1__ key; struct avtab_node* next; } ;


 int AVTAB_ENABLED ;
 int AVTAB_ENABLED_OLD ;

struct avtab_node*
avtab_search_node_next(struct avtab_node *node, int specified)
{
 struct avtab_node *cur;

 if (!node)
  return ((void*)0);

 specified &= ~(AVTAB_ENABLED|AVTAB_ENABLED_OLD);
 for (cur = node->next; cur; cur = cur->next) {
  if (node->key.source_type == cur->key.source_type &&
      node->key.target_type == cur->key.target_type &&
      node->key.target_class == cur->key.target_class &&
      (specified & cur->key.specified))
   return cur;

  if (node->key.source_type < cur->key.source_type)
   break;
  if (node->key.source_type == cur->key.source_type &&
      node->key.target_type < cur->key.target_type)
   break;
  if (node->key.source_type == cur->key.source_type &&
      node->key.target_type == cur->key.target_type &&
      node->key.target_class < cur->key.target_class)
   break;
 }
 return ((void*)0);
}

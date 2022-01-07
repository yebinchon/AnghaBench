
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_4__ {int data; } ;
struct TYPE_3__ {int specified; } ;
struct avtab_node {TYPE_2__ datum; TYPE_1__ key; } ;
struct avtab_key {int specified; } ;
struct avtab {int dummy; } ;
struct av_decision {int auditallow; int auditdeny; int allowed; } ;


 int AVTAB_ALLOWED ;
 int AVTAB_AUDITALLOW ;
 int AVTAB_AUDITDENY ;
 int AVTAB_ENABLED ;
 struct avtab_node* avtab_search_node (struct avtab*,struct avtab_key*) ;
 struct avtab_node* avtab_search_node_next (struct avtab_node*,int ) ;

void cond_compute_av(struct avtab *ctab, struct avtab_key *key, struct av_decision *avd)
{
 struct avtab_node *node;

 if (!ctab || !key || !avd)
  return;

 for (node = avtab_search_node(ctab, key); node;
    node = avtab_search_node_next(node, key->specified)) {
  if ((u16)(AVTAB_ALLOWED|AVTAB_ENABLED) ==
      (node->key.specified & (AVTAB_ALLOWED|AVTAB_ENABLED)))
   avd->allowed |= node->datum.data;
  if ((u16)(AVTAB_AUDITDENY|AVTAB_ENABLED) ==
      (node->key.specified & (AVTAB_AUDITDENY|AVTAB_ENABLED)))





   avd->auditdeny &= node->datum.data;
  if ((u16)(AVTAB_AUDITALLOW|AVTAB_ENABLED) ==
      (node->key.specified & (AVTAB_AUDITALLOW|AVTAB_ENABLED)))
   avd->auditallow |= node->datum.data;
 }
 return;
}

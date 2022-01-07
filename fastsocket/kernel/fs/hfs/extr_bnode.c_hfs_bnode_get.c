
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hfs_bnode {int refcnt; int this; TYPE_1__* tree; } ;
struct TYPE_2__ {int cnid; } ;


 int DBG_BNODE_REFS ;
 int atomic_inc (int *) ;
 int atomic_read (int *) ;
 int dprint (int ,char*,int ,int ,int ) ;

void hfs_bnode_get(struct hfs_bnode *node)
{
 if (node) {
  atomic_inc(&node->refcnt);
  dprint(DBG_BNODE_REFS, "get_node(%d:%d): %d\n",
         node->tree->cnid, node->this, atomic_read(&node->refcnt));
 }
}

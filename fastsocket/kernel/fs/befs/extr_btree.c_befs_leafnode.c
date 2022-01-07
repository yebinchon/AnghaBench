
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ overflow; } ;
struct TYPE_5__ {TYPE_1__ head; } ;
typedef TYPE_2__ befs_btree_node ;


 scalar_t__ befs_bt_inval ;

__attribute__((used)) static int
befs_leafnode(befs_btree_node * node)
{

 if (node->head.overflow == befs_bt_inval)
  return 1;
 else
  return 0;
}

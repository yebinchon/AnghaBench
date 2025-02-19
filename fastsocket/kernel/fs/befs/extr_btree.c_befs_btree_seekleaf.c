
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct super_block {int dummy; } ;
typedef int fs64 ;
typedef int befs_off_t ;
typedef int befs_data_stream ;
typedef int befs_btree_super ;
struct TYPE_7__ {scalar_t__ all_key_count; int overflow; } ;
struct TYPE_8__ {TYPE_1__ head; } ;
typedef TYPE_2__ befs_btree_node ;


 int BEFS_BT_EMPTY ;
 int BEFS_ERR ;
 scalar_t__ BEFS_OK ;
 scalar_t__ befs_bt_read_node (struct super_block*,int *,TYPE_2__*,int ) ;
 int * befs_bt_valarray (TYPE_2__*) ;
 int befs_debug (struct super_block*,char*,...) ;
 int befs_error (struct super_block*,char*,int ) ;
 scalar_t__ befs_leafnode (TYPE_2__*) ;
 int fs64_to_cpu (struct super_block*,int ) ;

__attribute__((used)) static int
befs_btree_seekleaf(struct super_block *sb, befs_data_stream * ds,
      befs_btree_super * bt_super, befs_btree_node * this_node,
      befs_off_t * node_off)
{

 befs_debug(sb, "---> befs_btree_seekleaf()");

 if (befs_bt_read_node(sb, ds, this_node, *node_off) != BEFS_OK) {
  befs_error(sb, "befs_btree_seekleaf() failed to read "
      "node at %Lu", *node_off);
  goto error;
 }
 befs_debug(sb, "Seekleaf to root node %Lu", *node_off);

 if (this_node->head.all_key_count == 0 && befs_leafnode(this_node)) {
  befs_debug(sb, "<--- befs_btree_seekleaf() Tree is EMPTY");
  return BEFS_BT_EMPTY;
 }

 while (!befs_leafnode(this_node)) {

  if (this_node->head.all_key_count == 0) {
   befs_debug(sb, "befs_btree_seekleaf() encountered "
       "an empty interior node: %Lu. Using Overflow "
       "node: %Lu", *node_off,
       this_node->head.overflow);
   *node_off = this_node->head.overflow;
  } else {
   fs64 *valarray = befs_bt_valarray(this_node);
   *node_off = fs64_to_cpu(sb, valarray[0]);
  }
  if (befs_bt_read_node(sb, ds, this_node, *node_off) != BEFS_OK) {
   befs_error(sb, "befs_btree_seekleaf() failed to read "
       "node at %Lu", *node_off);
   goto error;
  }

  befs_debug(sb, "Seekleaf to child node %Lu", *node_off);
 }
 befs_debug(sb, "Node %Lu is a leaf node", *node_off);

 return BEFS_OK;

      error:
 befs_debug(sb, "<--- befs_btree_seekleaf() ERROR");
 return BEFS_ERR;
}

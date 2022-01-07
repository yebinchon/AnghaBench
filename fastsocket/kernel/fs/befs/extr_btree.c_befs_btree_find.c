
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct super_block {int dummy; } ;
typedef int befs_off_t ;
typedef int befs_data_stream ;
struct TYPE_11__ {int root_node_ptr; } ;
typedef TYPE_2__ befs_btree_super ;
struct TYPE_10__ {int overflow; } ;
struct TYPE_12__ {int * bh; TYPE_1__ head; } ;
typedef TYPE_3__ befs_btree_node ;


 int BEFS_BT_MATCH ;
 int BEFS_BT_NOT_FOUND ;
 int BEFS_ERR ;
 scalar_t__ BEFS_OK ;
 int GFP_NOFS ;
 scalar_t__ befs_bt_read_node (struct super_block*,int *,TYPE_3__*,int) ;
 scalar_t__ befs_bt_read_super (struct super_block*,int *,TYPE_2__*) ;
 int befs_debug (struct super_block*,char*,...) ;
 int befs_error (struct super_block*,char*,...) ;
 int befs_find_key (struct super_block*,TYPE_3__*,char const*,int*) ;
 int befs_leafnode (TYPE_3__*) ;
 int brelse (int *) ;
 int kfree (TYPE_3__*) ;
 TYPE_3__* kmalloc (int,int ) ;

int
befs_btree_find(struct super_block *sb, befs_data_stream * ds,
  const char *key, befs_off_t * value)
{
 befs_btree_node *this_node = ((void*)0);
 befs_btree_super bt_super;
 befs_off_t node_off;
 int res;

 befs_debug(sb, "---> befs_btree_find() Key: %s", key);

 if (befs_bt_read_super(sb, ds, &bt_super) != BEFS_OK) {
  befs_error(sb,
      "befs_btree_find() failed to read index superblock");
  goto error;
 }

 this_node = kmalloc(sizeof (befs_btree_node),
      GFP_NOFS);
 if (!this_node) {
  befs_error(sb, "befs_btree_find() failed to allocate %u "
      "bytes of memory", sizeof (befs_btree_node));
  goto error;
 }

 this_node->bh = ((void*)0);


 node_off = bt_super.root_node_ptr;
 if (befs_bt_read_node(sb, ds, this_node, node_off) != BEFS_OK) {
  befs_error(sb, "befs_btree_find() failed to read "
      "node at %Lu", node_off);
  goto error_alloc;
 }

 while (!befs_leafnode(this_node)) {
  res = befs_find_key(sb, this_node, key, &node_off);
  if (res == BEFS_BT_NOT_FOUND)
   node_off = this_node->head.overflow;

  if (befs_bt_read_node(sb, ds, this_node, node_off) != BEFS_OK) {
   befs_error(sb, "befs_btree_find() failed to read "
       "node at %Lu", node_off);
   goto error_alloc;
  }
 }



 res = befs_find_key(sb, this_node, key, value);

 brelse(this_node->bh);
 kfree(this_node);

 if (res != BEFS_BT_MATCH) {
  befs_debug(sb, "<--- befs_btree_find() Key %s not found", key);
  *value = 0;
  return BEFS_BT_NOT_FOUND;
 }
 befs_debug(sb, "<--- befs_btree_find() Found key %s, value %Lu",
     key, *value);
 return BEFS_OK;

      error_alloc:
 kfree(this_node);
      error:
 *value = 0;
 befs_debug(sb, "<--- befs_btree_find() ERROR");
 return BEFS_ERR;
}

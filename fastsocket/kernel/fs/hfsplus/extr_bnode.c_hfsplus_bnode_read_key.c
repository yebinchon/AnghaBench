
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfs_btree {int attributes; int max_key_len; } ;
struct hfs_bnode {scalar_t__ type; struct hfs_btree* tree; } ;


 scalar_t__ HFS_NODE_LEAF ;
 int HFS_TREE_VARIDXKEYS ;
 int hfs_bnode_read (struct hfs_bnode*,void*,int,int) ;
 int hfs_bnode_read_u16 (struct hfs_bnode*,int) ;

void hfs_bnode_read_key(struct hfs_bnode *node, void *key, int off)
{
 struct hfs_btree *tree;
 int key_len;

 tree = node->tree;
 if (node->type == HFS_NODE_LEAF ||
     tree->attributes & HFS_TREE_VARIDXKEYS)
  key_len = hfs_bnode_read_u16(node, off) + 2;
 else
  key_len = tree->max_key_len + 2;

 hfs_bnode_read(node, key, off, key_len);
}

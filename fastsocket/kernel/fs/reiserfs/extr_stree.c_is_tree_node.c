
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_head {int b_size; int b_data; } ;


 int B_LEVEL (struct buffer_head*) ;
 int DISK_LEAF_NODE_LEVEL ;
 int is_internal (int ,int ,struct buffer_head*) ;
 int is_leaf (int ,int ,struct buffer_head*) ;
 int reiserfs_warning (int *,char*,char*,int,int) ;

__attribute__((used)) static int is_tree_node(struct buffer_head *bh, int level)
{
 if (B_LEVEL(bh) != level) {
  reiserfs_warning(((void*)0), "reiserfs-5090", "node level %d does "
     "not match to the expected one %d",
     B_LEVEL(bh), level);
  return 0;
 }
 if (level == DISK_LEAF_NODE_LEVEL)
  return is_leaf(bh->b_data, bh->b_size, bh);

 return is_internal(bh->b_data, bh->b_size, bh);
}

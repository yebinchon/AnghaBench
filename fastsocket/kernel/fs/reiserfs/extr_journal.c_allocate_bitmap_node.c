
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_blocksize; } ;
struct reiserfs_bitmap_node {int list; int id; int data; } ;


 int GFP_NOFS ;
 int INIT_LIST_HEAD (int *) ;
 int kfree (struct reiserfs_bitmap_node*) ;
 struct reiserfs_bitmap_node* kmalloc (int,int ) ;
 int kzalloc (int ,int ) ;

__attribute__((used)) static struct reiserfs_bitmap_node *allocate_bitmap_node(struct super_block
        *sb)
{
 struct reiserfs_bitmap_node *bn;
 static int id;

 bn = kmalloc(sizeof(struct reiserfs_bitmap_node), GFP_NOFS);
 if (!bn) {
  return ((void*)0);
 }
 bn->data = kzalloc(sb->s_blocksize, GFP_NOFS);
 if (!bn->data) {
  kfree(bn);
  return ((void*)0);
 }
 bn->id = id++;
 INIT_LIST_HEAD(&bn->list);
 return bn;
}

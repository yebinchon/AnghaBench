
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct super_block {TYPE_1__* s_op; } ;
struct inode {TYPE_3__* i_sb; } ;
struct TYPE_6__ {TYPE_2__* s_op; } ;
struct TYPE_5__ {int (* destroy_inode ) (struct inode*) ;} ;
struct TYPE_4__ {struct inode* (* alloc_inode ) (struct super_block*) ;} ;


 int GFP_KERNEL ;
 int inode_cachep ;
 int inode_init_always (struct super_block*,struct inode*) ;
 struct inode* kmem_cache_alloc (int ,int ) ;
 int kmem_cache_free (int ,struct inode*) ;
 struct inode* stub1 (struct super_block*) ;
 int stub2 (struct inode*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static struct inode *alloc_inode(struct super_block *sb)
{
 struct inode *inode;

 if (sb->s_op->alloc_inode)
  inode = sb->s_op->alloc_inode(sb);
 else
  inode = kmem_cache_alloc(inode_cachep, GFP_KERNEL);

 if (!inode)
  return ((void*)0);

 if (unlikely(inode_init_always(sb, inode))) {
  if (inode->i_sb->s_op->destroy_inode)
   inode->i_sb->s_op->destroy_inode(inode);
  else
   kmem_cache_free(inode_cachep, inode);
  return ((void*)0);
 }

 return inode;
}

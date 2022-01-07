
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {TYPE_2__* i_sb; } ;
struct TYPE_4__ {TYPE_1__* s_op; } ;
struct TYPE_3__ {int (* destroy_inode ) (struct inode*) ;} ;


 int __destroy_inode (struct inode*) ;
 int inode_cachep ;
 int kmem_cache_free (int ,struct inode*) ;
 int stub1 (struct inode*) ;

void destroy_inode(struct inode *inode)
{
 __destroy_inode(inode);
 if (inode->i_sb->s_op->destroy_inode)
  inode->i_sb->s_op->destroy_inode(inode);
 else
  kmem_cache_free(inode_cachep, (inode));
}

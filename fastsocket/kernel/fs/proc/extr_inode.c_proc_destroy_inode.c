
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int PROC_I (struct inode*) ;
 int kmem_cache_free (int ,int ) ;
 int proc_inode_cachep ;

__attribute__((used)) static void proc_destroy_inode(struct inode *inode)
{
 kmem_cache_free(proc_inode_cachep, PROC_I(inode));
}

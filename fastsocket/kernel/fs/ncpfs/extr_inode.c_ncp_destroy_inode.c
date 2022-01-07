
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int NCP_FINFO (struct inode*) ;
 int kmem_cache_free (int ,int ) ;
 int ncp_inode_cachep ;

__attribute__((used)) static void ncp_destroy_inode(struct inode *inode)
{
 kmem_cache_free(ncp_inode_cachep, NCP_FINFO(inode));
}

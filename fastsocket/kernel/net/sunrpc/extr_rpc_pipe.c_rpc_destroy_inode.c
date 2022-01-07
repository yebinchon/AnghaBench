
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int RPC_I (struct inode*) ;
 int kmem_cache_free (int ,int ) ;
 int rpc_inode_cachep ;

__attribute__((used)) static void
rpc_destroy_inode(struct inode *inode)
{
 kmem_cache_free(rpc_inode_cachep, RPC_I(inode));
}

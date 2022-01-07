
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kmem_cache_destroy (int ) ;
 int rpc_inode_cachep ;
 int rpc_pipe_fs_type ;
 int unregister_filesystem (int *) ;

void unregister_rpc_pipefs(void)
{
 kmem_cache_destroy(rpc_inode_cachep);
 unregister_filesystem(&rpc_pipe_fs_type);
}

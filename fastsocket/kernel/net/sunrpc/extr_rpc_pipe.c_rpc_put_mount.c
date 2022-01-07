
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int rpc_mount ;
 int rpc_mount_count ;
 int simple_release_fs (int *,int *) ;

void rpc_put_mount(void)
{
 simple_release_fs(&rpc_mount, &rpc_mount_count);
}

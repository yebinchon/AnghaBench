
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {int dummy; } ;


 struct vfsmount* ERR_PTR (int) ;
 struct vfsmount* rpc_mount ;
 int rpc_mount_count ;
 int rpc_pipe_fs_type ;
 int simple_pin_fs (int *,struct vfsmount**,int *) ;

struct vfsmount *rpc_get_mount(void)
{
 int err;

 err = simple_pin_fs(&rpc_pipe_fs_type, &rpc_mount, &rpc_mount_count);
 if (err != 0)
  return ERR_PTR(err);
 return rpc_mount;
}

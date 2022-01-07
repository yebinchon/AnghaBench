
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {int dummy; } ;
struct file_system_type {int name; } ;


 int MS_KERNMOUNT ;
 struct vfsmount* vfs_kern_mount (struct file_system_type*,int ,int ,void*) ;

struct vfsmount *kern_mount_data(struct file_system_type *type, void *data)
{
 return vfs_kern_mount(type, MS_KERNMOUNT, type->name, data);
}

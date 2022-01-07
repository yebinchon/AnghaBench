
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vfsmount {int dummy; } ;
struct file_system_type {int dummy; } ;
struct TYPE_4__ {TYPE_1__* nsproxy; } ;
struct TYPE_3__ {void* ipc_ns; } ;


 int MS_KERNMOUNT ;
 TYPE_2__* current ;
 int get_sb_ns (struct file_system_type*,int,void*,int ,struct vfsmount*) ;
 int mqueue_fill_super ;

__attribute__((used)) static int mqueue_get_sb(struct file_system_type *fs_type,
    int flags, const char *dev_name,
    void *data, struct vfsmount *mnt)
{
 if (!(flags & MS_KERNMOUNT))
  data = current->nsproxy->ipc_ns;
 return get_sb_ns(fs_type, flags, data, mqueue_fill_super, mnt);
}

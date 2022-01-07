
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {int dummy; } ;
struct file_system_type {int dummy; } ;


 int SOCKFS_MAGIC ;
 int get_sb_pseudo (struct file_system_type*,char*,int *,int ,struct vfsmount*) ;
 int sockfs_ops ;

__attribute__((used)) static int sockfs_get_sb(struct file_system_type *fs_type,
    int flags, const char *dev_name, void *data,
    struct vfsmount *mnt)
{
 return get_sb_pseudo(fs_type, "socket:", &sockfs_ops, SOCKFS_MAGIC,
        mnt);
}

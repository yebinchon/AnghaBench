
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {int dummy; } ;
struct file_system_type {int dummy; } ;


 int fill_super ;
 int get_sb_single (struct file_system_type*,int,void*,int ,struct vfsmount*) ;

__attribute__((used)) static int get_sb(struct file_system_type *fs_type,
    int flags, const char *dev_name,
    void *data, struct vfsmount *mnt)
{
 return get_sb_single(fs_type, flags, data, fill_super, mnt);
}

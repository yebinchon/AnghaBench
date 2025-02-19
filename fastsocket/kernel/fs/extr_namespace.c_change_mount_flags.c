
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {int dummy; } ;


 int MS_RDONLY ;
 int __mnt_is_readonly (struct vfsmount*) ;
 int __mnt_unmake_readonly (struct vfsmount*) ;
 int mnt_make_readonly (struct vfsmount*) ;

__attribute__((used)) static int change_mount_flags(struct vfsmount *mnt, int ms_flags)
{
 int error = 0;
 int readonly_request = 0;

 if (ms_flags & MS_RDONLY)
  readonly_request = 1;
 if (readonly_request == __mnt_is_readonly(mnt))
  return 0;

 if (readonly_request)
  error = mnt_make_readonly(mnt);
 else
  __mnt_unmake_readonly(mnt);
 return error;
}

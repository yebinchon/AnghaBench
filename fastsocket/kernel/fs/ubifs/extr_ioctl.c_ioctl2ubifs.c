
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FS_APPEND_FL ;
 int FS_COMPR_FL ;
 int FS_DIRSYNC_FL ;
 int FS_IMMUTABLE_FL ;
 int FS_SYNC_FL ;
 int UBIFS_APPEND_FL ;
 int UBIFS_COMPR_FL ;
 int UBIFS_DIRSYNC_FL ;
 int UBIFS_IMMUTABLE_FL ;
 int UBIFS_SYNC_FL ;

__attribute__((used)) static int ioctl2ubifs(int ioctl_flags)
{
 int ubifs_flags = 0;

 if (ioctl_flags & FS_COMPR_FL)
  ubifs_flags |= UBIFS_COMPR_FL;
 if (ioctl_flags & FS_SYNC_FL)
  ubifs_flags |= UBIFS_SYNC_FL;
 if (ioctl_flags & FS_APPEND_FL)
  ubifs_flags |= UBIFS_APPEND_FL;
 if (ioctl_flags & FS_IMMUTABLE_FL)
  ubifs_flags |= UBIFS_IMMUTABLE_FL;
 if (ioctl_flags & FS_DIRSYNC_FL)
  ubifs_flags |= UBIFS_DIRSYNC_FL;

 return ubifs_flags;
}

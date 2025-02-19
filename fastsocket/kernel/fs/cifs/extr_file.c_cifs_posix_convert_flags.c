
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 unsigned int O_ACCMODE ;
 unsigned int O_CREAT ;
 unsigned int O_DIRECT ;
 unsigned int O_DIRECTORY ;
 unsigned int O_EXCL ;
 unsigned int O_NOFOLLOW ;
 unsigned int O_RDONLY ;
 unsigned int O_RDWR ;
 unsigned int O_SYNC ;
 unsigned int O_TRUNC ;
 unsigned int O_WRONLY ;
 int SMB_O_CREAT ;
 int SMB_O_DIRECT ;
 int SMB_O_DIRECTORY ;
 int SMB_O_EXCL ;
 int SMB_O_NOFOLLOW ;
 int SMB_O_RDONLY ;
 int SMB_O_RDWR ;
 int SMB_O_SYNC ;
 int SMB_O_TRUNC ;
 int SMB_O_WRONLY ;

__attribute__((used)) static u32 cifs_posix_convert_flags(unsigned int flags)
{
 u32 posix_flags = 0;

 if ((flags & O_ACCMODE) == O_RDONLY)
  posix_flags = SMB_O_RDONLY;
 else if ((flags & O_ACCMODE) == O_WRONLY)
  posix_flags = SMB_O_WRONLY;
 else if ((flags & O_ACCMODE) == O_RDWR)
  posix_flags = SMB_O_RDWR;

 if (flags & O_CREAT)
  posix_flags |= SMB_O_CREAT;
 if (flags & O_EXCL)
  posix_flags |= SMB_O_EXCL;
 if (flags & O_TRUNC)
  posix_flags |= SMB_O_TRUNC;
 if (flags & O_SYNC)
  posix_flags |= SMB_O_SYNC;
 if (flags & O_DIRECTORY)
  posix_flags |= SMB_O_DIRECTORY;
 if (flags & O_NOFOLLOW)
  posix_flags |= SMB_O_NOFOLLOW;
 if (flags & O_DIRECT)
  posix_flags |= SMB_O_DIRECT;

 return posix_flags;
}

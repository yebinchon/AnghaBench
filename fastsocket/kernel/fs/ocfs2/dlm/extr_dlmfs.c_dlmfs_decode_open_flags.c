
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LKM_EXMODE ;
 int LKM_NOQUEUE ;
 int LKM_PRMODE ;
 int O_NONBLOCK ;
 int O_RDWR ;
 int O_WRONLY ;

__attribute__((used)) static int dlmfs_decode_open_flags(int open_flags,
       int *level,
       int *flags)
{
 if (open_flags & (O_WRONLY|O_RDWR))
  *level = LKM_EXMODE;
 else
  *level = LKM_PRMODE;

 *flags = 0;
 if (open_flags & O_NONBLOCK)
  *flags |= LKM_NOQUEUE;

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAY_EXEC ;
 int MAY_READ ;
 int MAY_WRITE ;
 int O_ACCMODE ;
 int O_RDONLY ;
 int O_WRONLY ;
 int __FMODE_EXEC ;

__attribute__((used)) static int nfs_open_permission_mask(int openflags)
{
 int mask = 0;

 if (openflags & __FMODE_EXEC) {

  mask = MAY_EXEC;
 } else {
  if ((openflags & O_ACCMODE) != O_WRONLY)
   mask |= MAY_READ;
  if ((openflags & O_ACCMODE) != O_RDONLY)
   mask |= MAY_WRITE;
 }

 return mask;
}

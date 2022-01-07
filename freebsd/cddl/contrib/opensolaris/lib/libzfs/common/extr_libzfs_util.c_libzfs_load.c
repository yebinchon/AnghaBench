
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EEXIST ;
 scalar_t__ errno ;
 scalar_t__ kldload (char*) ;
 scalar_t__ modfind (char*) ;

__attribute__((used)) static int
libzfs_load(void)
{
 int error;

 if (modfind("zfs") < 0) {

  if (kldload("zfs") < 0 || modfind("zfs") < 0) {
   if (errno != EEXIST)
    return (-1);
  }
 }
 return (0);
}

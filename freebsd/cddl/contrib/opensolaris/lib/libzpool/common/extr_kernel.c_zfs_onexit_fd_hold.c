
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ minor_t ;



int
zfs_onexit_fd_hold(int fd, minor_t *minorp)
{
 *minorp = 0;
 return (0);
}

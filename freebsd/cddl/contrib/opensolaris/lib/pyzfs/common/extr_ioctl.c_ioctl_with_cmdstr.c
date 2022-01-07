
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ zc_history; } ;
typedef TYPE_1__ zfs_cmd_t ;
typedef scalar_t__ uint64_t ;


 char* cmdstr ;
 int ioctl (int ,int,TYPE_1__*) ;
 int zfsdevfd ;

__attribute__((used)) static int
ioctl_with_cmdstr(int ioc, zfs_cmd_t *zc)
{
 int err;

 if (cmdstr[0])
  zc->zc_history = (uint64_t)(uintptr_t)cmdstr;
 err = ioctl(zfsdevfd, ioc, zc);
 cmdstr[0] = '\0';
 return (err);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ zc_guid; int member_0; } ;
typedef TYPE_1__ zfs_cmd_t ;
typedef scalar_t__ uint64_t ;


 int ZFS_IOC_CLEAR_FAULT ;
 int errno ;
 int fprintf (int ,char*,int,char*) ;
 scalar_t__ ioctl (int ,int ,TYPE_1__*) ;
 int printf (char*,int) ;
 int stderr ;
 char* strerror (int ) ;
 int zfs_fd ;

__attribute__((used)) static int
cancel_handler(int id)
{
 zfs_cmd_t zc = { 0 };

 zc.zc_guid = (uint64_t)id;

 if (ioctl(zfs_fd, ZFS_IOC_CLEAR_FAULT, &zc) != 0) {
  (void) fprintf(stderr, "failed to remove handler %d: %s\n",
      id, strerror(errno));
  return (1);
 }

 (void) printf("removed handler %d\n", id);

 return (0);
}

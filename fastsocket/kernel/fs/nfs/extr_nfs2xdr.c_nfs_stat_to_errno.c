
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int stat; int errno; } ;


 int dprintk (char*,int) ;
 TYPE_1__* nfs_errtbl ;

int
nfs_stat_to_errno(int stat)
{
 int i;

 for (i = 0; nfs_errtbl[i].stat != -1; i++) {
  if (nfs_errtbl[i].stat == stat)
   return nfs_errtbl[i].errno;
 }
 dprintk("nfs_stat_to_errno: bad nfs status return value: %d\n", stat);
 return nfs_errtbl[i].errno;
}

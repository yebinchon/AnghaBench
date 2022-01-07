
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ cl_boot; int cl_id; } ;
typedef TYPE_1__ clientid_t ;


 scalar_t__ boot_time ;
 int dprintk (char*,scalar_t__,int ,scalar_t__) ;

__attribute__((used)) static int
STALE_CLIENTID(clientid_t *clid)
{
 if (clid->cl_boot == boot_time)
  return 0;
 dprintk("NFSD stale clientid (%08x/%08x) boot_time %08lx\n",
  clid->cl_boot, clid->cl_id, boot_time);
 return 1;
}

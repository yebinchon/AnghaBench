
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfs_client {TYPE_1__* cl_mvops; } ;
struct TYPE_2__ {int reboot_recovery_ops; } ;


 int nfs4_reclaim_complete (struct nfs_client*,int ) ;
 int nfs4_state_clear_reclaim_reboot (struct nfs_client*) ;

__attribute__((used)) static void nfs4_state_end_reclaim_reboot(struct nfs_client *clp)
{
 if (!nfs4_state_clear_reclaim_reboot(clp))
  return;
 nfs4_reclaim_complete(clp, clp->cl_mvops->reboot_recovery_ops);
}

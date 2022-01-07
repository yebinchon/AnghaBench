
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_client {int dummy; } ;
struct nfs4_state_recovery_ops {int (* reclaim_complete ) (struct nfs_client*) ;} ;


 int stub1 (struct nfs_client*) ;

__attribute__((used)) static void nfs4_reclaim_complete(struct nfs_client *clp,
     const struct nfs4_state_recovery_ops *ops)
{

 if (ops->reclaim_complete)
  (void)ops->reclaim_complete(clp);
}

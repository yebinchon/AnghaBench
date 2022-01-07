
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct svc_fh {int fh_handle; } ;
struct nfs4_stateid {struct nfs4_file* st_file; } ;
struct nfs4_file {int fi_delegations; scalar_t__ fi_had_conflict; } ;
struct TYPE_4__ {int cb_work; } ;
struct TYPE_3__ {scalar_t__ si_generation; scalar_t__ si_fileid; scalar_t__ si_stateownerid; int si_boot; } ;
struct nfs4_delegation {TYPE_2__ dl_recall; int dl_perclnt; int dl_perfile; int dl_count; scalar_t__ dl_time; int dl_fh; TYPE_1__ dl_stateid; scalar_t__ dl_type; int * dl_flock; struct nfs4_file* dl_file; struct nfs4_client* dl_client; int dl_recall_lru; } ;
struct nfs4_client {int cl_delegations; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 scalar_t__ NFS4_OPEN_DELEGATE_READ ;
 int O_RDONLY ;
 int atomic_set (int *,int) ;
 int boot_time ;
 int current_delegid ;
 int deleg_slab ;
 int dprintk (char*) ;
 int fh_copy_shallow (int *,int *) ;
 int get_nfs4_file (struct nfs4_file*) ;
 struct nfs4_delegation* kmem_cache_alloc (int ,int ) ;
 int list_add (int *,int *) ;
 scalar_t__ max_delegations ;
 int nfs4_file_get_access (struct nfs4_file*,int ) ;
 int nfsd4_do_callback_rpc ;
 scalar_t__ num_delegations ;

__attribute__((used)) static struct nfs4_delegation *
alloc_init_deleg(struct nfs4_client *clp, struct nfs4_stateid *stp, struct svc_fh *current_fh, u32 type)
{
 struct nfs4_delegation *dp;
 struct nfs4_file *fp = stp->st_file;

 dprintk("NFSD alloc_init_deleg\n");





 if (type != NFS4_OPEN_DELEGATE_READ)
  return ((void*)0);
 if (fp->fi_had_conflict)
  return ((void*)0);
 if (num_delegations > max_delegations)
  return ((void*)0);
 dp = kmem_cache_alloc(deleg_slab, GFP_KERNEL);
 if (dp == ((void*)0))
  return dp;
 num_delegations++;
 INIT_LIST_HEAD(&dp->dl_perfile);
 INIT_LIST_HEAD(&dp->dl_perclnt);
 INIT_LIST_HEAD(&dp->dl_recall_lru);
 dp->dl_client = clp;
 get_nfs4_file(fp);
 dp->dl_file = fp;
 nfs4_file_get_access(fp, O_RDONLY);
 dp->dl_flock = ((void*)0);
 dp->dl_type = type;
 dp->dl_stateid.si_boot = boot_time;
 dp->dl_stateid.si_stateownerid = current_delegid++;
 dp->dl_stateid.si_fileid = 0;
 dp->dl_stateid.si_generation = 0;
 fh_copy_shallow(&dp->dl_fh, &current_fh->fh_handle);
 dp->dl_time = 0;
 atomic_set(&dp->dl_count, 1);
 list_add(&dp->dl_perfile, &fp->fi_delegations);
 list_add(&dp->dl_perclnt, &clp->cl_delegations);
 INIT_WORK(&dp->dl_recall.cb_work, nfsd4_do_callback_rpc);
 return dp;
}

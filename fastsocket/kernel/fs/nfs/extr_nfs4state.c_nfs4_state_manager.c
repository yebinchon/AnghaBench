
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfs_client {scalar_t__ cl_state; scalar_t__ cl_cons_state; int cl_hostname; TYPE_1__* cl_mvops; int cl_count; } ;
struct TYPE_2__ {int nograce_recovery_ops; int reboot_recovery_ops; } ;


 int NFS4CLNT_CHECK_LEASE ;
 int NFS4CLNT_DELEGRETURN ;
 int NFS4CLNT_LEASE_EXPIRED ;
 int NFS4CLNT_MANAGER_RUNNING ;
 int NFS4CLNT_RECALL_SLOT ;
 int NFS4CLNT_RECLAIM_NOGRACE ;
 int NFS4CLNT_RECLAIM_REBOOT ;
 int NFS4CLNT_SESSION_RESET ;
 int NFS4ERR_CB_PATH_DOWN ;
 scalar_t__ NFS_CS_SESSION_INITING ;
 int atomic_read (int *) ;
 int clear_bit (int ,scalar_t__*) ;
 int nfs4_check_lease (struct nfs_client*) ;
 int nfs4_clear_state_manager_bit (struct nfs_client*) ;
 int nfs4_do_reclaim (struct nfs_client*,int ) ;
 int nfs4_end_drain_session (struct nfs_client*) ;
 scalar_t__ nfs4_has_session (struct nfs_client*) ;
 int nfs4_recall_slot (struct nfs_client*) ;
 int nfs4_reclaim_lease (struct nfs_client*) ;
 int nfs4_reset_session (struct nfs_client*) ;
 int nfs4_set_lease_expired (struct nfs_client*,int) ;
 int nfs4_state_end_reclaim_reboot (struct nfs_client*) ;
 int nfs_client_return_marked_delegations (struct nfs_client*) ;
 int nfs_mark_client_ready (struct nfs_client*,int) ;
 int pnfs_destroy_all_layouts (struct nfs_client*) ;
 int pr_warn_ratelimited (char*,char const*,char const*,int ,int) ;
 int set_bit (int ,scalar_t__*) ;
 scalar_t__ strlen (char const*) ;
 scalar_t__ test_and_clear_bit (int ,scalar_t__*) ;
 scalar_t__ test_and_set_bit (int ,scalar_t__*) ;
 scalar_t__ test_bit (int ,scalar_t__*) ;

__attribute__((used)) static void nfs4_state_manager(struct nfs_client *clp)
{
 int status = 0;
 const char *section = "", *section_sep = "";


 do {
  if (test_and_clear_bit(NFS4CLNT_LEASE_EXPIRED, &clp->cl_state)) {
   section = "lease expired";

   status = nfs4_reclaim_lease(clp);
   if (status) {
    nfs4_set_lease_expired(clp, status);
    if (test_bit(NFS4CLNT_LEASE_EXPIRED,
       &clp->cl_state))
     continue;
    if (clp->cl_cons_state ==
       NFS_CS_SESSION_INITING)
     nfs_mark_client_ready(clp, status);
    goto out_error;
   }
   clear_bit(NFS4CLNT_CHECK_LEASE, &clp->cl_state);
   set_bit(NFS4CLNT_RECLAIM_REBOOT, &clp->cl_state);
   pnfs_destroy_all_layouts(clp);
  }

  if (test_and_clear_bit(NFS4CLNT_CHECK_LEASE, &clp->cl_state)) {
   section = "check lease";
   status = nfs4_check_lease(clp);
   if (test_bit(NFS4CLNT_LEASE_EXPIRED, &clp->cl_state))
    continue;
   if (status < 0 && status != -NFS4ERR_CB_PATH_DOWN)
    goto out_error;
  }


  if (test_and_clear_bit(NFS4CLNT_SESSION_RESET, &clp->cl_state)
     && nfs4_has_session(clp)) {
   section = "reset session";
   status = nfs4_reset_session(clp);
   if (test_bit(NFS4CLNT_LEASE_EXPIRED, &clp->cl_state))
    continue;
   if (status < 0)
    goto out_error;
  }


  if (test_bit(NFS4CLNT_RECLAIM_REBOOT, &clp->cl_state)) {
   section = "reclaim reboot";
   status = nfs4_do_reclaim(clp,
    clp->cl_mvops->reboot_recovery_ops);
   if (test_bit(NFS4CLNT_LEASE_EXPIRED, &clp->cl_state) ||
       test_bit(NFS4CLNT_SESSION_RESET, &clp->cl_state))
    continue;
   nfs4_state_end_reclaim_reboot(clp);
   if (test_bit(NFS4CLNT_RECLAIM_NOGRACE, &clp->cl_state))
    continue;
   if (status < 0)
    goto out_error;
  }


  if (test_and_clear_bit(NFS4CLNT_RECLAIM_NOGRACE, &clp->cl_state)) {
   section = "reclaim nograce";
   status = nfs4_do_reclaim(clp,
    clp->cl_mvops->nograce_recovery_ops);
   if (test_bit(NFS4CLNT_LEASE_EXPIRED, &clp->cl_state) ||
       test_bit(NFS4CLNT_SESSION_RESET, &clp->cl_state) ||
       test_bit(NFS4CLNT_RECLAIM_REBOOT, &clp->cl_state))
    continue;
   if (status < 0)
    goto out_error;
  }

  nfs4_end_drain_session(clp);
  if (test_and_clear_bit(NFS4CLNT_DELEGRETURN, &clp->cl_state)) {
   nfs_client_return_marked_delegations(clp);
   continue;
  }

  if (test_and_clear_bit(NFS4CLNT_RECALL_SLOT, &clp->cl_state)
     && nfs4_has_session(clp)) {
   section = "recall slot";
   status = nfs4_recall_slot(clp);
   if (status < 0)
    goto out_error;
   continue;
  }


  nfs4_clear_state_manager_bit(clp);

  if (clp->cl_state == 0)
   break;
  if (test_and_set_bit(NFS4CLNT_MANAGER_RUNNING, &clp->cl_state) != 0)
   break;
 } while (atomic_read(&clp->cl_count) > 1);
 return;
out_error:
 if (strlen(section))
  section_sep = ": ";
 pr_warn_ratelimited("NFS: state manager%s%s failed on NFSv4 server %s"
   " with error %d\n", section_sep, section,
   clp->cl_hostname, -status);
 nfs4_end_drain_session(clp);
 nfs4_clear_state_manager_bit(clp);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_server {int caps; } ;
struct nfs4_state_owner {int so_reclaim_seqcount; int so_cred; struct nfs_server* so_server; } ;
struct nfs4_state {int flags; } ;
struct nfs4_opendata {struct nfs4_state_owner* owner; } ;
typedef int fmode_t ;


 scalar_t__ IS_ERR (struct nfs4_state*) ;
 int NFS_CAP_POSIX_LOCK ;
 int NFS_STATE_POSIX_LOCKS ;
 int PTR_ERR (struct nfs4_state*) ;
 int _nfs4_proc_open (struct nfs4_opendata*) ;
 int nfs4_opendata_access (int ,struct nfs4_opendata*,struct nfs4_state*,int ,int) ;
 struct nfs4_state* nfs4_opendata_to_nfs4_state (struct nfs4_opendata*) ;
 int nfs4_schedule_stateid_recovery (struct nfs_server*,struct nfs4_state*) ;
 unsigned int raw_seqcount_begin (int *) ;
 scalar_t__ read_seqcount_retry (int *,unsigned int) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int _nfs4_open_and_get_state(struct nfs4_opendata *opendata,
  fmode_t fmode,
  int flags,
  struct nfs4_state **res)
{
 struct nfs4_state_owner *sp = opendata->owner;
 struct nfs_server *server = sp->so_server;
 struct nfs4_state *state;
 unsigned int seq;
 int ret;

 seq = raw_seqcount_begin(&sp->so_reclaim_seqcount);

 ret = _nfs4_proc_open(opendata);
 if (ret != 0)
  goto out;

 state = nfs4_opendata_to_nfs4_state(opendata);
 ret = PTR_ERR(state);
 if (IS_ERR(state))
  goto out;
 if (server->caps & NFS_CAP_POSIX_LOCK)
  set_bit(NFS_STATE_POSIX_LOCKS, &state->flags);

 ret = nfs4_opendata_access(sp->so_cred, opendata, state, fmode, flags);
 if (ret != 0)
  goto out;

 if (read_seqcount_retry(&sp->so_reclaim_seqcount, seq))
  nfs4_schedule_stateid_recovery(server, state);
 *res = state;
out:
 return ret;
}

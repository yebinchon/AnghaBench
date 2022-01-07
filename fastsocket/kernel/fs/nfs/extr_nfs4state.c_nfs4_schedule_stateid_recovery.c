
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_server {struct nfs_client* nfs_client; } ;
struct nfs_client {int dummy; } ;
struct nfs4_state {int dummy; } ;


 int EBADF ;
 int nfs4_schedule_state_manager (struct nfs_client*) ;
 int nfs4_state_mark_reclaim_nograce (struct nfs_client*,struct nfs4_state*) ;
 int nfs4_valid_open_stateid (struct nfs4_state*) ;

int nfs4_schedule_stateid_recovery(const struct nfs_server *server, struct nfs4_state *state)
{
 struct nfs_client *clp = server->nfs_client;

 if (!nfs4_valid_open_stateid(state))
  return -EBADF;
 nfs4_state_mark_reclaim_nograce(clp, state);
 nfs4_schedule_state_manager(clp);
 return 0;
}

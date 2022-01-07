
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {int rq_cred; } ;
struct sockaddr {int dummy; } ;
struct nfsd4_setclientid_confirm {int sc_clientid; int sc_confirm; } ;
struct nfsd4_compound_state {int dummy; } ;
struct nfs4_client {int cl_confirm; int cl_recdir; int cl_cred; int cl_cb_conn; int cl_cb_set; int cl_addr; } ;
typedef int nfs4_verifier ;
typedef int clientid_t ;
typedef int __be32 ;


 scalar_t__ STALE_CLIENTID (int *) ;
 int atomic_set (int *,int ) ;
 unsigned int clientstr_hashval (int ) ;
 int expire_client (struct nfs4_client*) ;
 struct nfs4_client* find_confirmed_client (int *) ;
 struct nfs4_client* find_confirmed_client_by_str (int ,unsigned int,int) ;
 struct nfs4_client* find_unconfirmed_client (int *) ;
 int move_to_confirmed (struct nfs4_client*) ;
 int nfs4_lock_state () ;
 int nfs4_unlock_state () ;
 int nfs_ok ;
 int nfsd4_change_callback (struct nfs4_client*,int *) ;
 int nfsd4_probe_callback (struct nfs4_client*) ;
 int nfsd4_remove_clid_dir (struct nfs4_client*) ;
 int nfserr_clid_inuse ;
 int nfserr_stale_clientid ;
 int rpc_cmp_addr (struct sockaddr*,struct sockaddr*) ;
 int same_creds (int *,int *) ;
 scalar_t__ same_verf (int *,int *) ;
 struct sockaddr* svc_addr (struct svc_rqst*) ;

__be32
nfsd4_setclientid_confirm(struct svc_rqst *rqstp,
    struct nfsd4_compound_state *cstate,
    struct nfsd4_setclientid_confirm *setclientid_confirm)
{
 struct sockaddr *sa = svc_addr(rqstp);
 struct nfs4_client *conf, *unconf;
 nfs4_verifier confirm = setclientid_confirm->sc_confirm;
 clientid_t * clid = &setclientid_confirm->sc_clientid;
 __be32 status;

 if (STALE_CLIENTID(clid))
  return nfserr_stale_clientid;





 nfs4_lock_state();

 conf = find_confirmed_client(clid);
 unconf = find_unconfirmed_client(clid);

 status = nfserr_clid_inuse;
 if (conf && !rpc_cmp_addr((struct sockaddr *) &conf->cl_addr, sa))
  goto out;
 if (unconf && !rpc_cmp_addr((struct sockaddr *) &unconf->cl_addr, sa))
  goto out;






 if (conf && unconf && same_verf(&confirm, &unconf->cl_confirm)) {




  if (!same_creds(&conf->cl_cred, &unconf->cl_cred))
   status = nfserr_clid_inuse;
  else {
   atomic_set(&conf->cl_cb_set, 0);
   nfsd4_change_callback(conf, &unconf->cl_cb_conn);
   nfsd4_probe_callback(conf);
   expire_client(unconf);
   status = nfs_ok;

  }
 } else if (conf && !unconf) {





  if (!same_creds(&conf->cl_cred, &rqstp->rq_cred))
   status = nfserr_clid_inuse;
  else
   status = nfs_ok;
 } else if (!conf && unconf
   && same_verf(&unconf->cl_confirm, &confirm)) {




  if (!same_creds(&unconf->cl_cred, &rqstp->rq_cred)) {
   status = nfserr_clid_inuse;
  } else {
   unsigned int hash =
    clientstr_hashval(unconf->cl_recdir);
   conf = find_confirmed_client_by_str(unconf->cl_recdir,
           hash, 0);
   if (conf) {
    nfsd4_remove_clid_dir(conf);
    expire_client(conf);
   }
   move_to_confirmed(unconf);
   conf = unconf;
   nfsd4_probe_callback(conf);
   status = nfs_ok;
  }
 } else if ((!conf || (conf && !same_verf(&conf->cl_confirm, &confirm)))
     && (!unconf || (unconf && !same_verf(&unconf->cl_confirm,
            &confirm)))) {




  status = nfserr_stale_clientid;
 } else {

  status = nfserr_clid_inuse;
 }
out:
 nfs4_unlock_state();
 return status;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct svc_rqst {int rq_xprt; } ;
struct sockaddr {int dummy; } ;
struct nfsd4_session {int se_cb_seq_nr; int se_flags; int se_ref; int se_perclnt; int se_hash; int se_sessionid; int se_cb_prog; int se_conns; struct nfs4_client* se_client; int se_fchannel; } ;
struct nfsd4_channel_attrs {int maxreqs; int maxresp_cached; } ;
struct nfsd4_create_session {int flags; int callback_prog; struct nfsd4_channel_attrs fore_channel; } ;
struct TYPE_2__ {int cb_addrlen; int cb_addr; int cb_xprt; } ;
struct nfs4_client {TYPE_1__ cl_cb_conn; struct nfsd4_session* cl_cb_session; int cl_sessions; } ;


 int INIT_LIST_HEAD (int *) ;
 int SESSION4_BACK_CHAN ;
 struct nfsd4_session* alloc_session (int,int) ;
 int client_lock ;
 int free_session (int *) ;
 int gen_sessionid (struct nfsd4_session*) ;
 int hash_sessionid (int *) ;
 int init_forechannel_attrs (int *,struct nfsd4_channel_attrs*,int,int) ;
 int kref_init (int *) ;
 int list_add (int *,int *) ;
 int nfsd4_get_drc_mem (int,int ) ;
 int nfsd4_new_conn (struct svc_rqst*,struct nfsd4_session*) ;
 int nfsd4_probe_callback (struct nfs4_client*) ;
 int nfsd4_put_drc_mem (int,int ) ;
 int nfsd4_sanitize_slot_size (int ) ;
 int rpc_copy_addr (struct sockaddr*,struct sockaddr*) ;
 int * sessionid_hashtbl ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct sockaddr* svc_addr (struct svc_rqst*) ;
 int svc_addr_len (struct sockaddr*) ;
 int svc_xprt_get (int ) ;

__attribute__((used)) static struct nfsd4_session *alloc_init_session(struct svc_rqst *rqstp, struct nfs4_client *clp, struct nfsd4_create_session *cses)
{
 struct nfsd4_session *new;
 struct nfsd4_channel_attrs *fchan = &cses->fore_channel;
 int numslots, slotsize;
 int status;
 int idx;
 slotsize = nfsd4_sanitize_slot_size(fchan->maxresp_cached);
 numslots = nfsd4_get_drc_mem(slotsize, fchan->maxreqs);

 new = alloc_session(slotsize, numslots);
 if (!new) {
  nfsd4_put_drc_mem(slotsize, fchan->maxreqs);
  return ((void*)0);
 }
 init_forechannel_attrs(&new->se_fchannel, fchan, numslots, slotsize);

 new->se_client = clp;
 gen_sessionid(new);

 INIT_LIST_HEAD(&new->se_conns);

 new->se_cb_seq_nr = 1;
 new->se_flags = cses->flags;
 new->se_cb_prog = cses->callback_prog;
 kref_init(&new->se_ref);
 idx = hash_sessionid(&new->se_sessionid);
 spin_lock(&client_lock);
 list_add(&new->se_hash, &sessionid_hashtbl[idx]);
 list_add(&new->se_perclnt, &clp->cl_sessions);
 spin_unlock(&client_lock);

 status = nfsd4_new_conn(rqstp, new);

 if (status) {
  free_session(&new->se_ref);
  return ((void*)0);
 }
 if (!clp->cl_cb_session && (cses->flags & SESSION4_BACK_CHAN)) {
  struct sockaddr *sa = svc_addr(rqstp);

  clp->cl_cb_session = new;
  clp->cl_cb_conn.cb_xprt = rqstp->rq_xprt;
  svc_xprt_get(rqstp->rq_xprt);
  rpc_copy_addr((struct sockaddr *)&clp->cl_cb_conn.cb_addr, sa);
  clp->cl_cb_conn.cb_addrlen = svc_addr_len(sa);
  nfsd4_probe_callback(clp);
 }
 return new;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd4_session {struct nfs4_client* se_client; } ;
struct nfsd4_conn {int cn_xpt_user; int cn_xprt; } ;
struct nfs4_client {int cl_lock; } ;


 struct nfsd4_conn* __nfsd4_find_conn (int ,struct nfsd4_session*) ;
 int __nfsd4_hash_conn (struct nfsd4_conn*,struct nfsd4_session*) ;
 int free_conn (struct nfsd4_conn*) ;
 int nfsd4_conn_lost (int *) ;
 int nfsd4_register_conn (struct nfsd4_conn*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void nfsd4_sequence_check_conn(struct nfsd4_conn *new, struct nfsd4_session *ses)
{
 struct nfs4_client *clp = ses->se_client;
 struct nfsd4_conn *c;
 int ret;

 spin_lock(&clp->cl_lock);
 c = __nfsd4_find_conn(new->cn_xprt, ses);
 if (c) {
  spin_unlock(&clp->cl_lock);
  free_conn(new);
  return;
 }
 __nfsd4_hash_conn(new, ses);
 spin_unlock(&clp->cl_lock);
 ret = nfsd4_register_conn(new);
 if (ret)

  nfsd4_conn_lost(&new->cn_xpt_user);
 return;
}

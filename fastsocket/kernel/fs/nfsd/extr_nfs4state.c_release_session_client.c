
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd4_session {struct nfs4_client* se_client; } ;
struct nfs4_client {int cl_refcount; } ;


 int atomic_dec_and_lock (int *,int *) ;
 int client_lock ;
 int free_client (struct nfs4_client*) ;
 scalar_t__ is_client_expired (struct nfs4_client*) ;
 int renew_client_locked (struct nfs4_client*) ;
 int spin_unlock (int *) ;

void
release_session_client(struct nfsd4_session *session)
{
 struct nfs4_client *clp = session->se_client;

 if (!atomic_dec_and_lock(&clp->cl_refcount, &client_lock))
  return;
 if (is_client_expired(clp)) {
  free_client(clp);
  session->se_client = ((void*)0);
 } else
  renew_client_locked(clp);
 spin_unlock(&client_lock);
}

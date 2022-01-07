
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd4_session {int se_conns; } ;
struct nfsd4_conn {int cn_persession; struct nfsd4_session* cn_session; } ;


 int list_add (int *,int *) ;

__attribute__((used)) static void __nfsd4_hash_conn(struct nfsd4_conn *conn, struct nfsd4_session *ses)
{
 conn->cn_session = ses;
 list_add(&conn->cn_persession, &ses->se_conns);
}

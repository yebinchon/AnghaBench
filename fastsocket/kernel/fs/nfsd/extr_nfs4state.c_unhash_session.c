
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd4_session {int se_perclnt; int se_hash; } ;


 int list_del (int *) ;

__attribute__((used)) static void
unhash_session(struct nfsd4_session *ses)
{
 list_del(&ses->se_hash);
 list_del(&ses->se_perclnt);
}

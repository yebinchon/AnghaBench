
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_stateowner {int so_close_lru; } ;


 int list_del (int *) ;
 int nfs4_put_stateowner (struct nfs4_stateowner*) ;
 int unhash_openowner (struct nfs4_stateowner*) ;

__attribute__((used)) static void release_openowner(struct nfs4_stateowner *sop)
{
 unhash_openowner(sop);
 list_del(&sop->so_close_lru);
 nfs4_put_stateowner(sop);
}

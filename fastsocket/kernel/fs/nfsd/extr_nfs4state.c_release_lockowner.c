
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_stateowner {int dummy; } ;


 int nfs4_put_stateowner (struct nfs4_stateowner*) ;
 int unhash_lockowner (struct nfs4_stateowner*) ;

__attribute__((used)) static void release_lockowner(struct nfs4_stateowner *sop)
{
 unhash_lockowner(sop);
 nfs4_put_stateowner(sop);
}

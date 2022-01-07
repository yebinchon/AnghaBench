
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_stateid {int dummy; } ;


 int free_generic_stateid (struct nfs4_stateid*) ;
 int release_stateid_lockowners (struct nfs4_stateid*) ;
 int unhash_generic_stateid (struct nfs4_stateid*) ;

__attribute__((used)) static void release_open_stateid(struct nfs4_stateid *stp)
{
 unhash_generic_stateid(stp);
 release_stateid_lockowners(stp);
 free_generic_stateid(stp);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_stateid {int st_perstateowner; int st_perfile; int st_hash; } ;


 int list_del (int *) ;

__attribute__((used)) static void unhash_generic_stateid(struct nfs4_stateid *stp)
{
 list_del(&stp->st_hash);
 list_del(&stp->st_perfile);
 list_del(&stp->st_perstateowner);
}

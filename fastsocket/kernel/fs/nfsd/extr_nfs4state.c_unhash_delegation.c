
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_delegation {int dl_recall_lru; int dl_perclnt; int dl_perfile; } ;


 int list_del_init (int *) ;
 int nfs4_close_delegation (struct nfs4_delegation*) ;
 int nfs4_put_delegation (struct nfs4_delegation*) ;
 int recall_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void
unhash_delegation(struct nfs4_delegation *dp)
{
 list_del_init(&dp->dl_perfile);
 list_del_init(&dp->dl_perclnt);
 spin_lock(&recall_lock);
 list_del_init(&dp->dl_recall_lru);
 spin_unlock(&recall_lock);
 nfs4_close_delegation(dp);
 nfs4_put_delegation(dp);
}

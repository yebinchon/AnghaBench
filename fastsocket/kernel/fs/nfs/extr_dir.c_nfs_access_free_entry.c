
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_access_entry {int cred; } ;


 int atomic_long_dec (int *) ;
 int kfree (struct nfs_access_entry*) ;
 int nfs_access_nr_entries ;
 int put_rpccred (int ) ;
 int smp_mb__after_atomic_dec () ;
 int smp_mb__before_atomic_dec () ;

__attribute__((used)) static void nfs_access_free_entry(struct nfs_access_entry *entry)
{
 put_rpccred(entry->cred);
 kfree(entry);
 smp_mb__before_atomic_dec();
 atomic_long_dec(&nfs_access_nr_entries);
 smp_mb__after_atomic_dec();
}

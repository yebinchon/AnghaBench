
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct the_nilfs {int * ns_sbh; int ns_gc_dat; int ns_dat; int ns_cpfile; int ns_sufile; int ns_list; int ns_count; } ;


 int atomic_dec_and_test (int *) ;
 int brelse (int ) ;
 int kfree (struct the_nilfs*) ;
 int list_del_init (int *) ;
 int might_sleep () ;
 int nilfs_destroy_gccache (struct the_nilfs*) ;
 scalar_t__ nilfs_init (struct the_nilfs*) ;
 scalar_t__ nilfs_loaded (struct the_nilfs*) ;
 int nilfs_lock ;
 int nilfs_mdt_clear (int ) ;
 int nilfs_mdt_destroy (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void put_nilfs(struct the_nilfs *nilfs)
{
 spin_lock(&nilfs_lock);
 if (!atomic_dec_and_test(&nilfs->ns_count)) {
  spin_unlock(&nilfs_lock);
  return;
 }
 list_del_init(&nilfs->ns_list);
 spin_unlock(&nilfs_lock);







 might_sleep();
 if (nilfs_loaded(nilfs)) {
  nilfs_mdt_clear(nilfs->ns_sufile);
  nilfs_mdt_destroy(nilfs->ns_sufile);
  nilfs_mdt_clear(nilfs->ns_cpfile);
  nilfs_mdt_destroy(nilfs->ns_cpfile);
  nilfs_mdt_clear(nilfs->ns_dat);
  nilfs_mdt_destroy(nilfs->ns_dat);

  nilfs_mdt_destroy(nilfs->ns_gc_dat);
 }
 if (nilfs_init(nilfs)) {
  nilfs_destroy_gccache(nilfs);
  brelse(nilfs->ns_sbh[0]);
  brelse(nilfs->ns_sbh[1]);
 }
 kfree(nilfs);
}

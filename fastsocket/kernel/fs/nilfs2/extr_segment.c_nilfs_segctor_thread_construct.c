
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_transaction_info {int dummy; } ;
struct nilfs_segctor_req {int mode; } ;
struct nilfs_sc_info {int sc_flags; struct nilfs_sb_info* sc_sbi; } ;
struct nilfs_sb_info {int dummy; } ;


 int NILFS_SC_UNCLOSED ;
 int nilfs_segctor_accept (struct nilfs_sc_info*,struct nilfs_segctor_req*) ;
 int nilfs_segctor_construct (struct nilfs_sc_info*,struct nilfs_segctor_req*) ;
 int nilfs_segctor_notify (struct nilfs_sc_info*,struct nilfs_segctor_req*) ;
 int nilfs_segctor_start_timer (struct nilfs_sc_info*) ;
 int nilfs_transaction_lock (struct nilfs_sb_info*,struct nilfs_transaction_info*,int ) ;
 int nilfs_transaction_unlock (struct nilfs_sb_info*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void nilfs_segctor_thread_construct(struct nilfs_sc_info *sci, int mode)
{
 struct nilfs_sb_info *sbi = sci->sc_sbi;
 struct nilfs_transaction_info ti;
 struct nilfs_segctor_req req = { .mode = mode };

 nilfs_transaction_lock(sbi, &ti, 0);

 nilfs_segctor_accept(sci, &req);
 nilfs_segctor_construct(sci, &req);
 nilfs_segctor_notify(sci, &req);






 if (test_bit(NILFS_SC_UNCLOSED, &sci->sc_flags))
  nilfs_segctor_start_timer(sci);

 nilfs_transaction_unlock(sbi);
}

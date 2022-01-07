
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct nilfs_transaction_info {int ti_flags; int ti_garbage; int ti_magic; struct nilfs_transaction_info* ti_save; scalar_t__ ti_count; } ;
struct nilfs_sb_info {TYPE_1__* s_nilfs; } ;
struct TYPE_7__ {struct nilfs_transaction_info* journal_info; } ;
struct TYPE_6__ {int sc_flags; } ;
struct TYPE_5__ {int ns_segctor_sem; } ;


 int INIT_LIST_HEAD (int *) ;
 TYPE_2__* NILFS_SC (struct nilfs_sb_info*) ;
 int NILFS_SC_PRIOR_FLUSH ;
 int NILFS_TI_GC ;
 int NILFS_TI_MAGIC ;
 int NILFS_TI_WRITER ;
 int WARN_ON (struct nilfs_transaction_info*) ;
 TYPE_3__* current ;
 int down_write (int *) ;
 int nilfs_segctor_do_immediate_flush (TYPE_2__*) ;
 int test_bit (int ,int *) ;
 int up_write (int *) ;
 int yield () ;

__attribute__((used)) static void nilfs_transaction_lock(struct nilfs_sb_info *sbi,
       struct nilfs_transaction_info *ti,
       int gcflag)
{
 struct nilfs_transaction_info *cur_ti = current->journal_info;

 WARN_ON(cur_ti);
 ti->ti_flags = NILFS_TI_WRITER;
 ti->ti_count = 0;
 ti->ti_save = cur_ti;
 ti->ti_magic = NILFS_TI_MAGIC;
 INIT_LIST_HEAD(&ti->ti_garbage);
 current->journal_info = ti;

 for (;;) {
  down_write(&sbi->s_nilfs->ns_segctor_sem);
  if (!test_bit(NILFS_SC_PRIOR_FLUSH, &NILFS_SC(sbi)->sc_flags))
   break;

  nilfs_segctor_do_immediate_flush(NILFS_SC(sbi));

  up_write(&sbi->s_nilfs->ns_segctor_sem);
  yield();
 }
 if (gcflag)
  ti->ti_flags |= NILFS_TI_GC;
}

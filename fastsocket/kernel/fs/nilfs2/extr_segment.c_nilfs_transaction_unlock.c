
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nilfs_transaction_info {scalar_t__ ti_magic; scalar_t__ ti_count; int ti_garbage; struct nilfs_transaction_info* ti_save; } ;
struct nilfs_sb_info {TYPE_1__* s_nilfs; } ;
struct TYPE_4__ {struct nilfs_transaction_info* journal_info; } ;
struct TYPE_3__ {int ns_segctor_sem; } ;


 int BUG_ON (int) ;
 scalar_t__ NILFS_TI_MAGIC ;
 TYPE_2__* current ;
 int list_empty (int *) ;
 int nilfs_dispose_list (struct nilfs_sb_info*,int *,int ) ;
 int up_write (int *) ;

__attribute__((used)) static void nilfs_transaction_unlock(struct nilfs_sb_info *sbi)
{
 struct nilfs_transaction_info *ti = current->journal_info;

 BUG_ON(ti == ((void*)0) || ti->ti_magic != NILFS_TI_MAGIC);
 BUG_ON(ti->ti_count > 0);

 up_write(&sbi->s_nilfs->ns_segctor_sem);
 current->journal_info = ti->ti_save;
 if (!list_empty(&ti->ti_garbage))
  nilfs_dispose_list(sbi, &ti->ti_garbage, 0);
}

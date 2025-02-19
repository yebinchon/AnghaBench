
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct super_block {TYPE_1__* dq_op; } ;
struct dquot {unsigned int dq_id; int dq_sb; int dq_flags; int dq_count; } ;
struct TYPE_4__ {int lookups; int cache_hits; } ;
struct TYPE_3__ {scalar_t__ (* acquire_dquot ) (struct dquot*) ;} ;


 int BUG_ON (int) ;
 int DQ_ACTIVE_B ;
 int atomic_inc (int *) ;
 int atomic_read (int *) ;
 int do_destroy_dquot (struct dquot*) ;
 int dq_list_lock ;
 int dq_state_lock ;
 int dqput (struct dquot*) ;
 TYPE_2__ dqstats ;
 struct dquot* find_dquot (unsigned int,struct super_block*,unsigned int,int) ;
 struct dquot* get_empty_dquot (struct super_block*,int) ;
 unsigned int hashfn (struct super_block*,unsigned int,int) ;
 int insert_dquot_hash (struct dquot*) ;
 int put_inuse (struct dquot*) ;
 int remove_free_dquot (struct dquot*) ;
 int sb_has_quota_active (struct super_block*,int) ;
 int schedule () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ stub1 (struct dquot*) ;
 int test_bit (int ,int *) ;
 int wait_on_dquot (struct dquot*) ;

struct dquot *dqget(struct super_block *sb, unsigned int id, int type)
{
 unsigned int hashent = hashfn(sb, id, type);
 struct dquot *dquot = ((void*)0), *empty = ((void*)0);

        if (!sb_has_quota_active(sb, type))
  return ((void*)0);
we_slept:
 spin_lock(&dq_list_lock);
 spin_lock(&dq_state_lock);
 if (!sb_has_quota_active(sb, type)) {
  spin_unlock(&dq_state_lock);
  spin_unlock(&dq_list_lock);
  goto out;
 }
 spin_unlock(&dq_state_lock);

 dquot = find_dquot(hashent, sb, id, type);
 if (!dquot) {
  if (!empty) {
   spin_unlock(&dq_list_lock);
   empty = get_empty_dquot(sb, type);
   if (!empty)
    schedule();
   goto we_slept;
  }
  dquot = empty;
  empty = ((void*)0);
  dquot->dq_id = id;

  put_inuse(dquot);

  insert_dquot_hash(dquot);
  dqstats.lookups++;
  spin_unlock(&dq_list_lock);
 } else {
  if (!atomic_read(&dquot->dq_count))
   remove_free_dquot(dquot);
  atomic_inc(&dquot->dq_count);
  dqstats.cache_hits++;
  dqstats.lookups++;
  spin_unlock(&dq_list_lock);
 }


 wait_on_dquot(dquot);

 if (!test_bit(DQ_ACTIVE_B, &dquot->dq_flags) &&
     sb->dq_op->acquire_dquot(dquot) < 0) {
  dqput(dquot);
  dquot = ((void*)0);
  goto out;
 }



out:
 if (empty)
  do_destroy_dquot(empty);

 return dquot;
}

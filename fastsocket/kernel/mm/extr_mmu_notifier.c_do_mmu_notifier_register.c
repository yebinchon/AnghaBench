
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmu_notifier_mm {int lock; int list; } ;
struct mmu_notifier {int hlist; } ;
struct mm_struct {int mm_users; int mmap_sem; struct mmu_notifier_mm* mmu_notifier_mm; int mm_count; } ;
struct TYPE_2__ {int per_cpu_ref; } ;


 int BUG_ON (int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_HLIST_HEAD (int *) ;
 int atomic_inc (int *) ;
 scalar_t__ atomic_read (int *) ;
 int down_write (int *) ;
 int hlist_add_head (int *,int *) ;
 int kfree (struct mmu_notifier_mm*) ;
 struct mmu_notifier_mm* kmalloc (int,int ) ;
 int mm_drop_all_locks (struct mm_struct*) ;
 int mm_has_notifiers (struct mm_struct*) ;
 int mm_take_all_locks (struct mm_struct*) ;
 int spin_lock (int *) ;
 int spin_lock_init (int *) ;
 int spin_unlock (int *) ;
 TYPE_1__ srcu ;
 scalar_t__ unlikely (int) ;
 int up_write (int *) ;

__attribute__((used)) static int do_mmu_notifier_register(struct mmu_notifier *mn,
        struct mm_struct *mm,
        int take_mmap_sem)
{
 struct mmu_notifier_mm *mmu_notifier_mm;
 int ret;

 BUG_ON(atomic_read(&mm->mm_users) <= 0);





 BUG_ON(!srcu.per_cpu_ref);

 ret = -ENOMEM;
 mmu_notifier_mm = kmalloc(sizeof(struct mmu_notifier_mm), GFP_KERNEL);
 if (unlikely(!mmu_notifier_mm))
  goto out;

 if (take_mmap_sem)
  down_write(&mm->mmap_sem);
 ret = mm_take_all_locks(mm);
 if (unlikely(ret))
  goto out_cleanup;

 if (!mm_has_notifiers(mm)) {
  INIT_HLIST_HEAD(&mmu_notifier_mm->list);
  spin_lock_init(&mmu_notifier_mm->lock);
  mm->mmu_notifier_mm = mmu_notifier_mm;
  mmu_notifier_mm = ((void*)0);
 }
 atomic_inc(&mm->mm_count);
 spin_lock(&mm->mmu_notifier_mm->lock);
 hlist_add_head(&mn->hlist, &mm->mmu_notifier_mm->list);
 spin_unlock(&mm->mmu_notifier_mm->lock);

 mm_drop_all_locks(mm);
out_cleanup:
 if (take_mmap_sem)
  up_write(&mm->mmap_sem);

 kfree(mmu_notifier_mm);
out:
 BUG_ON(atomic_read(&mm->mm_users) <= 0);
 return ret;
}

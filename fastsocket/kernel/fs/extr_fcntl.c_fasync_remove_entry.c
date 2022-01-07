
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int f_lock; int f_flags; } ;
struct fasync_struct {struct fasync_struct* fa_next; struct file* fa_file; } ;


 int FASYNC ;
 int fasync_cache ;
 int fasync_lock ;
 int kmem_cache_free (int ,struct fasync_struct*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int write_lock_irq (int *) ;
 int write_unlock_irq (int *) ;

__attribute__((used)) static int fasync_remove_entry(struct file *filp, struct fasync_struct **fapp)
{
 struct fasync_struct *fa, **fp;
 int result = 0;

 spin_lock(&filp->f_lock);
 write_lock_irq(&fasync_lock);
 for (fp = fapp; (fa = *fp) != ((void*)0); fp = &fa->fa_next) {
  if (fa->fa_file != filp)
   continue;
  *fp = fa->fa_next;
  kmem_cache_free(fasync_cache, fa);
  filp->f_flags &= ~FASYNC;
  result = 1;
  break;
 }
 write_unlock_irq(&fasync_lock);
 spin_unlock(&filp->f_lock);
 return result;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int f_lock; int f_flags; } ;
struct fasync_struct {int fa_fd; struct fasync_struct* fa_next; struct file* fa_file; int magic; } ;


 int ENOMEM ;
 int FASYNC ;
 int FASYNC_MAGIC ;
 int GFP_KERNEL ;
 int fasync_cache ;
 int fasync_lock ;
 struct fasync_struct* kmem_cache_alloc (int ,int ) ;
 int kmem_cache_free (int ,struct fasync_struct*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int write_lock_irq (int *) ;
 int write_unlock_irq (int *) ;

__attribute__((used)) static int fasync_add_entry(int fd, struct file *filp, struct fasync_struct **fapp)
{
 struct fasync_struct *new, *fa, **fp;
 int result = 0;

 new = kmem_cache_alloc(fasync_cache, GFP_KERNEL);
 if (!new)
  return -ENOMEM;

 spin_lock(&filp->f_lock);
 write_lock_irq(&fasync_lock);
 for (fp = fapp; (fa = *fp) != ((void*)0); fp = &fa->fa_next) {
  if (fa->fa_file != filp)
   continue;
  fa->fa_fd = fd;
  kmem_cache_free(fasync_cache, new);
  goto out;
 }

 new->magic = FASYNC_MAGIC;
 new->fa_file = filp;
 new->fa_fd = fd;
 new->fa_next = *fapp;
 *fapp = new;
 result = 1;
 filp->f_flags |= FASYNC;

out:
 write_unlock_irq(&fasync_lock);
 spin_unlock(&filp->f_lock);
 return result;
}

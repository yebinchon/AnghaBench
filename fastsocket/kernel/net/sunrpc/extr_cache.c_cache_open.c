
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file {int f_mode; struct cache_reader* private_data; } ;
struct TYPE_2__ {int reader; int list; } ;
struct cache_reader {TYPE_1__ q; scalar_t__ offset; } ;
struct cache_detail {int queue; int readers; int owner; } ;


 int EACCES ;
 int ENOMEM ;
 int FMODE_READ ;
 int GFP_KERNEL ;
 int atomic_inc (int *) ;
 struct cache_reader* kmalloc (int,int ) ;
 int list_add (int *,int *) ;
 int nonseekable_open (struct inode*,struct file*) ;
 int queue_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int try_module_get (int ) ;

__attribute__((used)) static int cache_open(struct inode *inode, struct file *filp,
        struct cache_detail *cd)
{
 struct cache_reader *rp = ((void*)0);

 if (!cd || !try_module_get(cd->owner))
  return -EACCES;
 nonseekable_open(inode, filp);
 if (filp->f_mode & FMODE_READ) {
  rp = kmalloc(sizeof(*rp), GFP_KERNEL);
  if (!rp)
   return -ENOMEM;
  rp->offset = 0;
  rp->q.reader = 1;
  atomic_inc(&cd->readers);
  spin_lock(&queue_lock);
  list_add(&rp->q.list, &cd->queue);
  spin_unlock(&queue_lock);
 }
 filp->private_data = rp;
 return 0;
}

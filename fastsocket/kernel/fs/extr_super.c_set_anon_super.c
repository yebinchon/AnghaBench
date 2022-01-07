
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_dev; } ;


 int EAGAIN ;
 int EMFILE ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int MAX_ID_MASK ;
 int MINORBITS ;
 int MINORMASK ;
 int MKDEV (int ,int) ;
 int ida_get_new_above (int *,int,int*) ;
 scalar_t__ ida_pre_get (int *,int ) ;
 int ida_remove (int *,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int unnamed_dev_ida ;
 int unnamed_dev_lock ;
 int unnamed_dev_start ;

int set_anon_super(struct super_block *s, void *data)
{
 int dev;
 int error;

 retry:
 if (ida_pre_get(&unnamed_dev_ida, GFP_ATOMIC) == 0)
  return -ENOMEM;
 spin_lock(&unnamed_dev_lock);
 error = ida_get_new_above(&unnamed_dev_ida, unnamed_dev_start, &dev);
 if (!error)
  unnamed_dev_start = dev + 1;
 spin_unlock(&unnamed_dev_lock);
 if (error == -EAGAIN)

  goto retry;
 else if (error)
  return -EAGAIN;

 if ((dev & MAX_ID_MASK) == (1 << MINORBITS)) {
  spin_lock(&unnamed_dev_lock);
  ida_remove(&unnamed_dev_ida, dev);
  if (unnamed_dev_start > dev)
   unnamed_dev_start = dev;
  spin_unlock(&unnamed_dev_lock);
  return -EMFILE;
 }
 s->s_dev = MKDEV(0, dev & MINORMASK);
 return 0;
}

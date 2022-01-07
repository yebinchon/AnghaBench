
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ida {int dummy; } ;
typedef int gfp_t ;


 int BUG_ON (int) ;
 int EAGAIN ;
 int ENOMEM ;
 int ENOSPC ;
 int ida_get_new_above (struct ida*,unsigned int,int*) ;
 int ida_pre_get (struct ida*,int ) ;
 int ida_remove (struct ida*,int) ;
 int simple_ida_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int) ;

int ida_simple_get(struct ida *ida, unsigned int start, unsigned int end,
     gfp_t gfp_mask)
{
 int ret, id;
 unsigned int max;

 BUG_ON((int)start < 0);
 BUG_ON((int)end < 0);

 if (end == 0)
  max = 0x80000000;
 else {
  BUG_ON(end < start);
  max = end - 1;
 }

again:
 if (!ida_pre_get(ida, gfp_mask))
  return -ENOMEM;

 spin_lock(&simple_ida_lock);
 ret = ida_get_new_above(ida, start, &id);
 if (!ret) {
  if (id > max) {
   ida_remove(ida, id);
   ret = -ENOSPC;
  } else {
   ret = id;
  }
 }
 spin_unlock(&simple_ida_lock);

 if (unlikely(ret == -EAGAIN))
  goto again;

 return ret;
}

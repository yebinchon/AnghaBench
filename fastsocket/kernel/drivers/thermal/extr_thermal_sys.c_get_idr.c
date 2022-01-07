
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mutex {int dummy; } ;
struct idr {int dummy; } ;


 int EAGAIN ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MAX_ID_MASK ;
 int idr_get_new (struct idr*,int *,int*) ;
 scalar_t__ idr_pre_get (struct idr*,int ) ;
 int mutex_lock (struct mutex*) ;
 int mutex_unlock (struct mutex*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int get_idr(struct idr *idr, struct mutex *lock, int *id)
{
 int err;

      again:
 if (unlikely(idr_pre_get(idr, GFP_KERNEL) == 0))
  return -ENOMEM;

 if (lock)
  mutex_lock(lock);
 err = idr_get_new(idr, ((void*)0), id);
 if (lock)
  mutex_unlock(lock);
 if (unlikely(err == -EAGAIN))
  goto again;
 else if (unlikely(err))
  return err;

 *id = *id & MAX_ID_MASK;
 return 0;
}

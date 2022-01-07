
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mutex {int dummy; } ;
struct idr {int dummy; } ;


 int idr_remove (struct idr*,int) ;
 int mutex_lock (struct mutex*) ;
 int mutex_unlock (struct mutex*) ;

__attribute__((used)) static void release_idr(struct idr *idr, struct mutex *lock, int id)
{
 if (lock)
  mutex_lock(lock);
 idr_remove(idr, id);
 if (lock)
  mutex_unlock(lock);
}

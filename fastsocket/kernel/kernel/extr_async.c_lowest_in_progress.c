
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct async_domain {int dummy; } ;
typedef int async_cookie_t ;


 int __lowest_in_progress (struct async_domain*) ;
 int async_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static async_cookie_t lowest_in_progress(struct async_domain *running)
{
 unsigned long flags;
 async_cookie_t ret;

 spin_lock_irqsave(&async_lock, flags);
 ret = __lowest_in_progress(running);
 spin_unlock_irqrestore(&async_lock, flags);
 return ret;
}

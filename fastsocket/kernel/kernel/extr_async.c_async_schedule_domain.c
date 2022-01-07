
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct async_domain {int dummy; } ;
typedef int async_func_ptr ;
typedef int async_cookie_t ;


 int __async_schedule (int *,void*,struct async_domain*) ;

async_cookie_t async_schedule_domain(async_func_ptr *ptr, void *data,
         struct async_domain *running)
{
 return __async_schedule(ptr, data, running);
}

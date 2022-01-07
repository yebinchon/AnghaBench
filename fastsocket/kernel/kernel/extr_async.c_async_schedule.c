
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int async_func_ptr ;
typedef int async_cookie_t ;


 int __async_schedule (int *,void*,int *) ;
 int async_running ;

async_cookie_t async_schedule(async_func_ptr *ptr, void *data)
{
 return __async_schedule(ptr, data, &async_running);
}

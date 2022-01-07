
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_vs_app {int usecnt; int app; } ;


 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 int ip_vs_app_get (int ) ;
 scalar_t__ unlikely (int) ;

int ip_vs_app_inc_get(struct ip_vs_app *inc)
{
 int result;

 atomic_inc(&inc->usecnt);
 if (unlikely((result = ip_vs_app_get(inc->app)) != 1))
  atomic_dec(&inc->usecnt);
 return result;
}

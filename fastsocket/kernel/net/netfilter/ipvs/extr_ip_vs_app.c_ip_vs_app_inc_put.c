
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_vs_app {int usecnt; int app; } ;


 int atomic_dec (int *) ;
 int ip_vs_app_put (int ) ;

void ip_vs_app_inc_put(struct ip_vs_app *inc)
{
 ip_vs_app_put(inc->app);
 atomic_dec(&inc->usecnt);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_vs_app {int dummy; } ;
typedef int __u16 ;


 int __ip_vs_app_mutex ;
 int ip_vs_app_inc_new (struct ip_vs_app*,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int
register_ip_vs_app_inc(struct ip_vs_app *app, __u16 proto, __u16 port)
{
 int result;

 mutex_lock(&__ip_vs_app_mutex);

 result = ip_vs_app_inc_new(app, proto, port);

 mutex_unlock(&__ip_vs_app_mutex);

 return result;
}

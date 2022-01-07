
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_vs_app {int a_list; } ;


 int __ip_vs_app_mutex ;
 int ip_vs_app_list ;
 int ip_vs_use_count_inc () ;
 int list_add (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int register_ip_vs_app(struct ip_vs_app *app)
{

 ip_vs_use_count_inc();

 mutex_lock(&__ip_vs_app_mutex);

 list_add(&app->a_list, &ip_vs_app_list);

 mutex_unlock(&__ip_vs_app_mutex);

 return 0;
}

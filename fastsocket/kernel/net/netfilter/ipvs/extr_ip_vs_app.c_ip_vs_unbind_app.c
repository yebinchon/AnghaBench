
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_vs_conn {struct ip_vs_app* app; } ;
struct ip_vs_app {int (* done_conn ) (struct ip_vs_app*,struct ip_vs_conn*) ;int (* unbind_conn ) (struct ip_vs_app*,struct ip_vs_conn*) ;} ;


 int ip_vs_app_inc_put (struct ip_vs_app*) ;
 int stub1 (struct ip_vs_app*,struct ip_vs_conn*) ;
 int stub2 (struct ip_vs_app*,struct ip_vs_conn*) ;

void ip_vs_unbind_app(struct ip_vs_conn *cp)
{
 struct ip_vs_app *inc = cp->app;

 if (!inc)
  return;

 if (inc->unbind_conn)
  inc->unbind_conn(inc, cp);
 if (inc->done_conn)
  inc->done_conn(inc, cp);
 ip_vs_app_inc_put(inc);
 cp->app = ((void*)0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_vs_protocol {int name; int (* unregister_app ) (struct ip_vs_app*) ;} ;
struct ip_vs_app {struct ip_vs_app* timeout_table; int a_list; int port; int name; int protocol; } ;


 int IP_VS_DBG (int,char*,int ,int ,int ) ;
 struct ip_vs_protocol* ip_vs_proto_get (int ) ;
 int kfree (struct ip_vs_app*) ;
 int list_del (int *) ;
 int stub1 (struct ip_vs_app*) ;

__attribute__((used)) static void
ip_vs_app_inc_release(struct ip_vs_app *inc)
{
 struct ip_vs_protocol *pp;

 if (!(pp = ip_vs_proto_get(inc->protocol)))
  return;

 if (pp->unregister_app)
  pp->unregister_app(inc);

 IP_VS_DBG(9, "%s App %s:%u unregistered\n",
    pp->name, inc->name, inc->port);

 list_del(&inc->a_list);

 kfree(inc->timeout_table);
 kfree(inc);
}

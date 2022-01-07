
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_vs_protocol {int (* register_app ) (struct ip_vs_app*) ;int name; int unregister_app; } ;
struct ip_vs_app {struct ip_vs_app* timeout_table; int port; int name; int incs_list; int a_list; int timeouts_size; scalar_t__ timeouts; int usecnt; struct ip_vs_app* app; int p_list; } ;
typedef int __u16 ;


 int ENOMEM ;
 int EOPNOTSUPP ;
 int EPROTONOSUPPORT ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int IP_VS_DBG (int,char*,int ,int ,int ) ;
 int atomic_set (int *,int ) ;
 int htons (int ) ;
 struct ip_vs_app* ip_vs_create_timeout_table (scalar_t__,int ) ;
 struct ip_vs_protocol* ip_vs_proto_get (int ) ;
 int kfree (struct ip_vs_app*) ;
 struct ip_vs_app* kmemdup (struct ip_vs_app*,int,int ) ;
 int list_add (int *,int *) ;
 int stub1 (struct ip_vs_app*) ;

__attribute__((used)) static int
ip_vs_app_inc_new(struct ip_vs_app *app, __u16 proto, __u16 port)
{
 struct ip_vs_protocol *pp;
 struct ip_vs_app *inc;
 int ret;

 if (!(pp = ip_vs_proto_get(proto)))
  return -EPROTONOSUPPORT;

 if (!pp->unregister_app)
  return -EOPNOTSUPP;

 inc = kmemdup(app, sizeof(*inc), GFP_KERNEL);
 if (!inc)
  return -ENOMEM;
 INIT_LIST_HEAD(&inc->p_list);
 INIT_LIST_HEAD(&inc->incs_list);
 inc->app = app;
 inc->port = htons(port);
 atomic_set(&inc->usecnt, 0);

 if (app->timeouts) {
  inc->timeout_table =
   ip_vs_create_timeout_table(app->timeouts,
         app->timeouts_size);
  if (!inc->timeout_table) {
   ret = -ENOMEM;
   goto out;
  }
 }

 ret = pp->register_app(inc);
 if (ret)
  goto out;

 list_add(&inc->a_list, &app->incs_list);
 IP_VS_DBG(9, "%s application %s:%u registered\n",
    pp->name, inc->name, inc->port);

 return 0;

  out:
 kfree(inc->timeout_table);
 kfree(inc);
 return ret;
}

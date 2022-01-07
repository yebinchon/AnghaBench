
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct netlink_callback {int* args; } ;
typedef int ip_set_id_t ;
struct TYPE_2__ {int name; } ;


 TYPE_1__** ip_set_list ;
 int ip_set_put_byindex (int ) ;
 int pr_debug (char*,int ) ;

__attribute__((used)) static int
ip_set_dump_done(struct netlink_callback *cb)
{
 if (cb->args[2]) {
  pr_debug("release set %s\n", ip_set_list[cb->args[1]]->name);
  ip_set_put_byindex((ip_set_id_t) cb->args[1]);
 }
 return 0;
}

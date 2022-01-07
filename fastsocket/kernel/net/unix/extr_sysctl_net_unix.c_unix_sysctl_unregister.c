
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {TYPE_2__* ctl; } ;
struct net {TYPE_1__ unx; } ;
struct ctl_table {int dummy; } ;
struct TYPE_4__ {struct ctl_table* ctl_table_arg; } ;


 int kfree (struct ctl_table*) ;
 int unregister_sysctl_table (TYPE_2__*) ;

void unix_sysctl_unregister(struct net *net)
{
 struct ctl_table *table;

 table = net->unx.ctl->ctl_table_arg;
 unregister_sysctl_table(net->unx.ctl);
 kfree(table);
}

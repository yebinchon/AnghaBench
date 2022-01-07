
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* child; scalar_t__ ctl_name; } ;
typedef TYPE_1__ ctl_table ;


 TYPE_1__* ax25_table ;
 int ax25_table_header ;
 int kfree (TYPE_1__*) ;
 int unregister_sysctl_table (int ) ;

void ax25_unregister_sysctl(void)
{
 ctl_table *p;
 unregister_sysctl_table(ax25_table_header);

 for (p = ax25_table; p->ctl_name; p++)
  kfree(p->child);
 kfree(ax25_table);
}

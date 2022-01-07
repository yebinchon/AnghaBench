
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int name; int * instance; int * status_indication; int * flow_indication; int * disconnect_indication; int * connect_indication; int * connect_confirm; int * udata_indication; int * data_indication; } ;
typedef TYPE_1__ notify_t ;


 int strlcpy (int ,char*,int) ;

void irda_notify_init(notify_t *notify)
{
 notify->data_indication = ((void*)0);
 notify->udata_indication = ((void*)0);
 notify->connect_confirm = ((void*)0);
 notify->connect_indication = ((void*)0);
 notify->disconnect_indication = ((void*)0);
 notify->flow_indication = ((void*)0);
 notify->status_indication = ((void*)0);
 notify->instance = ((void*)0);
 strlcpy(notify->name, "Unknown", sizeof(notify->name));
}

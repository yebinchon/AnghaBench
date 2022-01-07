
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_5__ {int blocked; int name; } ;
struct TYPE_6__ {TYPE_1__ publ; scalar_t__ active; } ;


 size_t MAX_BEARERS ;
 int bearer_disable (int ) ;
 int kfree (TYPE_2__*) ;
 scalar_t__ media_count ;
 TYPE_2__* media_list ;
 TYPE_2__* tipc_bearers ;

void tipc_bearer_stop(void)
{
 u32 i;

 if (!tipc_bearers)
  return;

 for (i = 0; i < MAX_BEARERS; i++) {
  if (tipc_bearers[i].active)
   tipc_bearers[i].publ.blocked = 1;
 }
 for (i = 0; i < MAX_BEARERS; i++) {
  if (tipc_bearers[i].active)
   bearer_disable(tipc_bearers[i].publ.name);
 }
 kfree(tipc_bearers);
 kfree(media_list);
 tipc_bearers = ((void*)0);
 media_list = ((void*)0);
 media_count = 0;
}

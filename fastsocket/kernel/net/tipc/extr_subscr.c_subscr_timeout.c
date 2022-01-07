
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int upper; int lower; } ;
struct TYPE_6__ {TYPE_1__ seq; } ;
struct TYPE_7__ {TYPE_2__ s; } ;
struct subscription {scalar_t__ timeout; int timer; TYPE_3__ evt; int subscription_list; int server_ref; } ;
struct port {int dummy; } ;
struct TYPE_8__ {int subscription_count; } ;


 int TIPC_SUBSCR_TIMEOUT ;
 scalar_t__ TIPC_WAIT_FOREVER ;
 int atomic_dec (int *) ;
 int k_term_timer (int *) ;
 int kfree (struct subscription*) ;
 int list_del (int *) ;
 int subscr_send_event (struct subscription*,int ,int ,int ,int ,int ) ;
 int tipc_nametbl_unsubscribe (struct subscription*) ;
 struct port* tipc_port_lock (int ) ;
 int tipc_port_unlock (struct port*) ;
 TYPE_4__ topsrv ;

__attribute__((used)) static void subscr_timeout(struct subscription *sub)
{
 struct port *server_port;



 server_port = tipc_port_lock(sub->server_ref);
 if (server_port == ((void*)0))
  return;



 if (sub->timeout == TIPC_WAIT_FOREVER) {
  tipc_port_unlock(server_port);
  return;
 }



 tipc_nametbl_unsubscribe(sub);



 list_del(&sub->subscription_list);



 tipc_port_unlock(server_port);



 subscr_send_event(sub, sub->evt.s.seq.lower, sub->evt.s.seq.upper,
     TIPC_SUBSCR_TIMEOUT, 0, 0);



 k_term_timer(&sub->timer);
 kfree(sub);
 atomic_dec(&topsrv.subscription_count);
}

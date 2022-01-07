
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int unchar ;
typedef scalar_t__ u32 ;
struct tipc_portid {int dummy; } ;
struct tipc_name_seq {int dummy; } ;
struct subscriber {scalar_t__ port_ref; int * lock; int subscriber_list; int subscription_list; } ;
struct sk_buff {int dummy; } ;
struct iovec {int member_1; int * member_0; } ;
struct TYPE_4__ {int * lock; } ;
struct TYPE_6__ {TYPE_1__ publ; } ;
struct TYPE_5__ {int lock; int subscriber_list; int user_ref; } ;


 int GFP_ATOMIC ;
 int INIT_LIST_HEAD (int *) ;
 int kfree (struct subscriber*) ;
 struct subscriber* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int subscr_conn_msg_event (struct subscriber*,scalar_t__,struct sk_buff**,int const*,scalar_t__) ;
 int subscr_conn_shutdown_event ;
 int tipc_connect2port (scalar_t__,struct tipc_portid const*) ;
 int tipc_createport (int ,struct subscriber*,scalar_t__,int *,int *,int ,int *,int *,int (*) (struct subscriber*,scalar_t__,struct sk_buff**,int const*,scalar_t__),int *,scalar_t__*) ;
 TYPE_3__* tipc_port_lock (scalar_t__) ;
 int tipc_send (scalar_t__,int,struct iovec*) ;
 TYPE_2__ topsrv ;
 int warn (char*) ;

__attribute__((used)) static void subscr_named_msg_event(void *usr_handle,
       u32 port_ref,
       struct sk_buff **buf,
       const unchar *data,
       u32 size,
       u32 importance,
       struct tipc_portid const *orig,
       struct tipc_name_seq const *dest)
{
 static struct iovec msg_sect = {((void*)0), 0};

 struct subscriber *subscriber;
 u32 server_port_ref;



 subscriber = kzalloc(sizeof(struct subscriber), GFP_ATOMIC);
 if (subscriber == ((void*)0)) {
  warn("Subscriber rejected, no memory\n");
  return;
 }
 INIT_LIST_HEAD(&subscriber->subscription_list);
 INIT_LIST_HEAD(&subscriber->subscriber_list);



 tipc_createport(topsrv.user_ref,
   subscriber,
   importance,
   ((void*)0),
   ((void*)0),
   subscr_conn_shutdown_event,
   ((void*)0),
   ((void*)0),
   subscr_conn_msg_event,
   ((void*)0),
   &subscriber->port_ref);
 if (subscriber->port_ref == 0) {
  warn("Subscriber rejected, unable to create port\n");
  kfree(subscriber);
  return;
 }
 tipc_connect2port(subscriber->port_ref, orig);



 subscriber->lock = tipc_port_lock(subscriber->port_ref)->publ.lock;



 spin_lock_bh(&topsrv.lock);
 list_add(&subscriber->subscriber_list, &topsrv.subscriber_list);
 spin_unlock_bh(&topsrv.lock);



 server_port_ref = subscriber->port_ref;
 spin_unlock_bh(subscriber->lock);



 tipc_send(server_port_ref, 1, &msg_sect);



 if (size != 0) {
  subscr_conn_msg_event(subscriber, server_port_ref,
          buf, data, size);
 }
}

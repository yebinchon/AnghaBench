
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int unchar ;
typedef int u32 ;
struct tipc_subscr {int dummy; } ;
struct subscription {int dummy; } ;
struct subscriber {int * lock; } ;
struct sk_buff {int dummy; } ;
typedef int spinlock_t ;


 int spin_unlock_bh (int *) ;
 struct subscription* subscr_subscribe (struct tipc_subscr*,struct subscriber*) ;
 int subscr_terminate (struct subscriber*) ;
 int tipc_nametbl_subscribe (struct subscription*) ;
 int * tipc_port_lock (int) ;

__attribute__((used)) static void subscr_conn_msg_event(void *usr_handle,
      u32 port_ref,
      struct sk_buff **buf,
      const unchar *data,
      u32 size)
{
 struct subscriber *subscriber = usr_handle;
 spinlock_t *subscriber_lock;
 struct subscription *sub;






 if (tipc_port_lock(port_ref) == ((void*)0))
  return;

 subscriber_lock = subscriber->lock;

 if (size != sizeof(struct tipc_subscr)) {
  subscr_terminate(subscriber);
  spin_unlock_bh(subscriber_lock);
 } else {
  sub = subscr_subscribe((struct tipc_subscr *)data, subscriber);
  spin_unlock_bh(subscriber_lock);
  if (sub != ((void*)0)) {
   tipc_nametbl_subscribe(sub);
  }
 }
}

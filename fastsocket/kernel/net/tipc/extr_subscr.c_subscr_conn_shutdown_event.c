
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct subscriber {int * lock; } ;
struct sk_buff {int dummy; } ;
typedef int spinlock_t ;


 int spin_unlock_bh (int *) ;
 int subscr_terminate (struct subscriber*) ;
 int * tipc_port_lock (int ) ;

__attribute__((used)) static void subscr_conn_shutdown_event(void *usr_handle,
           u32 port_ref,
           struct sk_buff **buf,
           unsigned char const *data,
           unsigned int size,
           int reason)
{
 struct subscriber *subscriber = usr_handle;
 spinlock_t *subscriber_lock;

 if (tipc_port_lock(port_ref) == ((void*)0))
  return;

 subscriber_lock = subscriber->lock;
 subscr_terminate(subscriber);
 spin_unlock_bh(subscriber_lock);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_4__ {int lock; } ;
struct l2cap_conn {int disc_reason; int info_timer; TYPE_2__ chan_list; int lock; scalar_t__ feat_mask; int * dst; int * src; int mtu; struct hci_conn* hcon; } ;
struct hci_conn {int dst; TYPE_1__* hdev; struct l2cap_conn* l2cap_data; } ;
struct TYPE_3__ {int bdaddr; int acl_mtu; } ;


 int BT_DBG (char*,struct hci_conn*,struct l2cap_conn*) ;
 int GFP_ATOMIC ;
 struct l2cap_conn* kzalloc (int,int ) ;
 int l2cap_info_timeout ;
 int rwlock_init (int *) ;
 int setup_timer (int *,int ,unsigned long) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static struct l2cap_conn *l2cap_conn_add(struct hci_conn *hcon, u8 status)
{
 struct l2cap_conn *conn = hcon->l2cap_data;

 if (conn || status)
  return conn;

 conn = kzalloc(sizeof(struct l2cap_conn), GFP_ATOMIC);
 if (!conn)
  return ((void*)0);

 hcon->l2cap_data = conn;
 conn->hcon = hcon;

 BT_DBG("hcon %p conn %p", hcon, conn);

 conn->mtu = hcon->hdev->acl_mtu;
 conn->src = &hcon->hdev->bdaddr;
 conn->dst = &hcon->dst;

 conn->feat_mask = 0;

 spin_lock_init(&conn->lock);
 rwlock_init(&conn->chan_list.lock);

 setup_timer(&conn->info_timer, l2cap_info_timeout,
      (unsigned long) conn);

 conn->disc_reason = 0x13;

 return conn;
}

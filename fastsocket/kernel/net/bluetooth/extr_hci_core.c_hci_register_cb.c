
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_cb {int list; int name; } ;


 int BT_DBG (char*,struct hci_cb*,int ) ;
 int hci_cb_list ;
 int hci_cb_list_lock ;
 int list_add (int *,int *) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

int hci_register_cb(struct hci_cb *cb)
{
 BT_DBG("%p name %s", cb, cb->name);

 write_lock_bh(&hci_cb_list_lock);
 list_add(&cb->list, &hci_cb_list);
 write_unlock_bh(&hci_cb_list_lock);

 return 0;
}

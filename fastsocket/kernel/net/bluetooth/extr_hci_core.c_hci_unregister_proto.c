
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_proto {size_t id; int name; } ;


 int BT_DBG (char*,struct hci_proto*,int ,size_t) ;
 int EINVAL ;
 int ENOENT ;
 size_t HCI_MAX_PROTO ;
 int ** hci_proto ;
 int hci_task_lock ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

int hci_unregister_proto(struct hci_proto *hp)
{
 int err = 0;

 BT_DBG("%p name %s id %d", hp, hp->name, hp->id);

 if (hp->id >= HCI_MAX_PROTO)
  return -EINVAL;

 write_lock_bh(&hci_task_lock);

 if (hci_proto[hp->id])
  hci_proto[hp->id] = ((void*)0);
 else
  err = -ENOENT;

 write_unlock_bh(&hci_task_lock);

 return err;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_dev {int req_status; int req_result; int name; int req_wait_q; } ;
typedef int __u32 ;


 int BT_DBG (char*,int ,...) ;
 int DECLARE_WAITQUEUE (int ,int ) ;
 int EINTR ;
 int ETIMEDOUT ;


 int HCI_REQ_PEND ;
 int TASK_INTERRUPTIBLE ;
 int add_wait_queue (int *,int *) ;
 int bt_err (int) ;
 int current ;
 int remove_wait_queue (int *,int *) ;
 int schedule_timeout (int ) ;
 int set_current_state (int ) ;
 scalar_t__ signal_pending (int ) ;
 int wait ;

__attribute__((used)) static int __hci_request(struct hci_dev *hdev, void (*req)(struct hci_dev *hdev, unsigned long opt),
    unsigned long opt, __u32 timeout)
{
 DECLARE_WAITQUEUE(wait, current);
 int err = 0;

 BT_DBG("%s start", hdev->name);

 hdev->req_status = HCI_REQ_PEND;

 add_wait_queue(&hdev->req_wait_q, &wait);
 set_current_state(TASK_INTERRUPTIBLE);

 req(hdev, opt);
 schedule_timeout(timeout);

 remove_wait_queue(&hdev->req_wait_q, &wait);

 if (signal_pending(current))
  return -EINTR;

 switch (hdev->req_status) {
 case 128:
  err = -bt_err(hdev->req_result);
  break;

 case 129:
  err = -hdev->req_result;
  break;

 default:
  err = -ETIMEDOUT;
  break;
 }

 hdev->req_status = hdev->req_result = 0;

 BT_DBG("%s end: err %d", hdev->name, err);

 return err;
}

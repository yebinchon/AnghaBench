
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_dev {int flags; } ;
typedef int __u32 ;


 int ENETDOWN ;
 int HCI_UP ;
 int __hci_request (struct hci_dev*,void (*) (struct hci_dev*,unsigned long),unsigned long,int ) ;
 int hci_req_lock (struct hci_dev*) ;
 int hci_req_unlock (struct hci_dev*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static inline int hci_request(struct hci_dev *hdev, void (*req)(struct hci_dev *hdev, unsigned long opt),
    unsigned long opt, __u32 timeout)
{
 int ret;

 if (!test_bit(HCI_UP, &hdev->flags))
  return -ENETDOWN;


 hci_req_lock(hdev);
 ret = __hci_request(hdev, req, opt, timeout);
 hci_req_unlock(hdev);

 return ret;
}

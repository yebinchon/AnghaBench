
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hci_dev {int dummy; } ;
struct device {int dummy; } ;
struct hci_conn {struct device dev; } ;
struct bnep_session {TYPE_1__* sock; } ;
typedef int bdaddr_t ;
struct TYPE_4__ {int dst; int src; } ;
struct TYPE_3__ {int sk; } ;


 int ACL_LINK ;
 TYPE_2__* bt_sk (int ) ;
 struct hci_conn* hci_conn_hash_lookup_ba (struct hci_dev*,int ,int *) ;
 int hci_dev_put (struct hci_dev*) ;
 struct hci_dev* hci_get_route (int *,int *) ;

__attribute__((used)) static struct device *bnep_get_device(struct bnep_session *session)
{
 bdaddr_t *src = &bt_sk(session->sock->sk)->src;
 bdaddr_t *dst = &bt_sk(session->sock->sk)->dst;
 struct hci_dev *hdev;
 struct hci_conn *conn;

 hdev = hci_get_route(dst, src);
 if (!hdev)
  return ((void*)0);

 conn = hci_conn_hash_lookup_ba(hdev, ACL_LINK, dst);

 hci_dev_put(hdev);

 return conn ? &conn->dev : ((void*)0);
}

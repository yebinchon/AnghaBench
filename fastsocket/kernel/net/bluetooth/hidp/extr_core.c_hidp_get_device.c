
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct hidp_session {TYPE_2__* conn; TYPE_1__* ctrl_sock; } ;
struct hci_dev {int dummy; } ;
struct device {int dummy; } ;
typedef int bdaddr_t ;
struct TYPE_6__ {int dst; int src; } ;
struct TYPE_5__ {struct device dev; } ;
struct TYPE_4__ {int sk; } ;


 int ACL_LINK ;
 TYPE_3__* bt_sk (int ) ;
 TYPE_2__* hci_conn_hash_lookup_ba (struct hci_dev*,int ,int *) ;
 int hci_dev_put (struct hci_dev*) ;
 struct hci_dev* hci_get_route (int *,int *) ;

__attribute__((used)) static struct device *hidp_get_device(struct hidp_session *session)
{
 bdaddr_t *src = &bt_sk(session->ctrl_sock->sk)->src;
 bdaddr_t *dst = &bt_sk(session->ctrl_sock->sk)->dst;
 struct device *device = ((void*)0);
 struct hci_dev *hdev;

 hdev = hci_get_route(dst, src);
 if (!hdev)
  return ((void*)0);

 session->conn = hci_conn_hash_lookup_ba(hdev, ACL_LINK, dst);
 if (session->conn)
  device = &session->conn->dev;

 hci_dev_put(hdev);

 return device;
}

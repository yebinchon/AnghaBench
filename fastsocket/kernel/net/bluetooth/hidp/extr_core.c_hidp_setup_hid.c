
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct hidp_session {int * rd_data; struct hid_device* hid; TYPE_1__* ctrl_sock; int rd_size; } ;
struct hidp_connadd_req {int name; int country; int version; int product; int vendor; int rd_size; int rd_data; } ;
struct TYPE_5__ {int parent; } ;
struct hid_device {int hid_output_raw_report; int * ll_driver; TYPE_2__ dev; int uniq; int phys; int name; int country; int version; int product; int vendor; int bus; struct hidp_session* driver_data; } ;
typedef int bdaddr_t ;
struct TYPE_6__ {int dst; int src; } ;
struct TYPE_4__ {int sk; } ;


 int BUS_BLUETOOTH ;
 int EFAULT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct hid_device*) ;
 int PTR_ERR (struct hid_device*) ;
 int baswap (int *,int *) ;
 int batostr (int *) ;
 TYPE_3__* bt_sk (int ) ;
 scalar_t__ copy_from_user (int *,int ,int ) ;
 int hid_add_device (struct hid_device*) ;
 struct hid_device* hid_allocate_device () ;
 int hid_destroy_device (struct hid_device*) ;
 int hidp_get_device (struct hidp_session*) ;
 int hidp_hid_driver ;
 int hidp_output_raw_report ;
 int kfree (int *) ;
 int * kzalloc (int ,int ) ;
 int strncpy (int ,int ,int) ;

__attribute__((used)) static int hidp_setup_hid(struct hidp_session *session,
    struct hidp_connadd_req *req)
{
 struct hid_device *hid;
 bdaddr_t src, dst;
 int err;

 session->rd_data = kzalloc(req->rd_size, GFP_KERNEL);
 if (!session->rd_data)
  return -ENOMEM;

 if (copy_from_user(session->rd_data, req->rd_data, req->rd_size)) {
  err = -EFAULT;
  goto fault;
 }
 session->rd_size = req->rd_size;

 hid = hid_allocate_device();
 if (IS_ERR(hid)) {
  err = PTR_ERR(hid);
  goto fault;
 }

 session->hid = hid;

 hid->driver_data = session;

 baswap(&src, &bt_sk(session->ctrl_sock->sk)->src);
 baswap(&dst, &bt_sk(session->ctrl_sock->sk)->dst);

 hid->bus = BUS_BLUETOOTH;
 hid->vendor = req->vendor;
 hid->product = req->product;
 hid->version = req->version;
 hid->country = req->country;

 strncpy(hid->name, req->name, sizeof(req->name) - 1);
 strncpy(hid->phys, batostr(&src), 64);
 strncpy(hid->uniq, batostr(&dst), 64);

 hid->dev.parent = hidp_get_device(session);
 hid->ll_driver = &hidp_hid_driver;

 hid->hid_output_raw_report = hidp_output_raw_report;

 err = hid_add_device(hid);
 if (err < 0)
  goto failed;

 return 0;

failed:
 hid_destroy_device(hid);
 session->hid = ((void*)0);

fault:
 kfree(session->rd_data);
 session->rd_data = ((void*)0);

 return err;
}

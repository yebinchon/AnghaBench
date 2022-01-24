#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct hidp_session {int /*<<< orphan*/ * rd_data; struct hid_device* hid; TYPE_1__* ctrl_sock; int /*<<< orphan*/  rd_size; } ;
struct hidp_connadd_req {int /*<<< orphan*/  name; int /*<<< orphan*/  country; int /*<<< orphan*/  version; int /*<<< orphan*/  product; int /*<<< orphan*/  vendor; int /*<<< orphan*/  rd_size; int /*<<< orphan*/  rd_data; } ;
struct TYPE_5__ {int /*<<< orphan*/  parent; } ;
struct hid_device {int /*<<< orphan*/  hid_output_raw_report; int /*<<< orphan*/ * ll_driver; TYPE_2__ dev; int /*<<< orphan*/  uniq; int /*<<< orphan*/  phys; int /*<<< orphan*/  name; int /*<<< orphan*/  country; int /*<<< orphan*/  version; int /*<<< orphan*/  product; int /*<<< orphan*/  vendor; int /*<<< orphan*/  bus; struct hidp_session* driver_data; } ;
typedef  int /*<<< orphan*/  bdaddr_t ;
struct TYPE_6__ {int /*<<< orphan*/  dst; int /*<<< orphan*/  src; } ;
struct TYPE_4__ {int /*<<< orphan*/  sk; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_BLUETOOTH ; 
 int EFAULT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct hid_device*) ; 
 int FUNC1 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct hid_device*) ; 
 struct hid_device* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct hidp_session*) ; 
 int /*<<< orphan*/  hidp_hid_driver ; 
 int /*<<< orphan*/  hidp_output_raw_report ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC13(struct hidp_session *session,
				struct hidp_connadd_req *req)
{
	struct hid_device *hid;
	bdaddr_t src, dst;
	int err;

	session->rd_data = FUNC11(req->rd_size, GFP_KERNEL);
	if (!session->rd_data)
		return -ENOMEM;

	if (FUNC5(session->rd_data, req->rd_data, req->rd_size)) {
		err = -EFAULT;
		goto fault;
	}
	session->rd_size = req->rd_size;

	hid = FUNC7();
	if (FUNC0(hid)) {
		err = FUNC1(hid);
		goto fault;
	}

	session->hid = hid;

	hid->driver_data = session;

	FUNC2(&src, &FUNC4(session->ctrl_sock->sk)->src);
	FUNC2(&dst, &FUNC4(session->ctrl_sock->sk)->dst);

	hid->bus     = BUS_BLUETOOTH;
	hid->vendor  = req->vendor;
	hid->product = req->product;
	hid->version = req->version;
	hid->country = req->country;

	FUNC12(hid->name, req->name, sizeof(req->name) - 1);
	FUNC12(hid->phys, FUNC3(&src), 64);
	FUNC12(hid->uniq, FUNC3(&dst), 64);

	hid->dev.parent = FUNC9(session);
	hid->ll_driver = &hidp_hid_driver;

	hid->hid_output_raw_report = hidp_output_raw_report;

	err = FUNC6(hid);
	if (err < 0)
		goto failed;

	return 0;

failed:
	FUNC8(hid);
	session->hid = NULL;

fault:
	FUNC10(session->rd_data);
	session->rd_data = NULL;

	return err;
}
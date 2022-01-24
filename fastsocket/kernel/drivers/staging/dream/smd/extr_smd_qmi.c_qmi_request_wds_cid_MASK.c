#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct qmi_msg {int txn_id; int type; unsigned char* tlv; scalar_t__ size; int /*<<< orphan*/  client_id; int /*<<< orphan*/  service; } ;
struct qmi_ctxt {int ctl_txn_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  QMI_CTL ; 
 unsigned char QMI_WDS ; 
 int QMUX_HEADER ; 
 int /*<<< orphan*/  QMUX_OVERHEAD ; 
 int /*<<< orphan*/  FUNC0 (struct qmi_msg*,int,int,unsigned char*) ; 
 int /*<<< orphan*/  qmi_ctl_client_id ; 
 int FUNC1 (struct qmi_ctxt*,struct qmi_msg*) ; 

__attribute__((used)) static int FUNC2(struct qmi_ctxt *ctxt)
{
	unsigned char data[64 + QMUX_OVERHEAD];
	struct qmi_msg msg;
	unsigned char n;

	msg.service = QMI_CTL;
	msg.client_id = qmi_ctl_client_id;
	msg.txn_id = ctxt->ctl_txn_id;
	msg.type = 0x0022;
	msg.size = 0;
	msg.tlv = data + QMUX_HEADER;

	ctxt->ctl_txn_id += 2;

	n = QMI_WDS;
	FUNC0(&msg, 0x01, 0x01, &n);

	return FUNC1(ctxt, &msg);
}
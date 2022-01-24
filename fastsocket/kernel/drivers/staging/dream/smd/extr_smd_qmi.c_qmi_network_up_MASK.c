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
struct qmi_ctxt {int wds_txn_id; int /*<<< orphan*/  wds_client_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  QMI_WDS ; 
 int QMUX_HEADER ; 
 int /*<<< orphan*/  QMUX_OVERHEAD ; 
 int /*<<< orphan*/  FUNC0 (struct qmi_msg*,int,int,...) ; 
 int FUNC1 (struct qmi_ctxt*,struct qmi_msg*) ; 
 int FUNC2 (char*) ; 

__attribute__((used)) static int FUNC3(struct qmi_ctxt *ctxt, char *apn)
{
	unsigned char data[96 + QMUX_OVERHEAD];
	struct qmi_msg msg;
	char *auth_type;
	char *user;
	char *pass;

	for (user = apn; *user; user++) {
		if (*user == ' ') {
			*user++ = 0;
			break;
		}
	}
	for (pass = user; *pass; pass++) {
		if (*pass == ' ') {
			*pass++ = 0;
			break;
		}
	}

	for (auth_type = pass; *auth_type; auth_type++) {
		if (*auth_type == ' ') {
			*auth_type++ = 0;
			break;
		}
	}

	msg.service = QMI_WDS;
	msg.client_id = ctxt->wds_client_id;
	msg.txn_id = ctxt->wds_txn_id;
	msg.type = 0x0020;
	msg.size = 0;
	msg.tlv = data + QMUX_HEADER;

	ctxt->wds_txn_id += 2;

	FUNC0(&msg, 0x14, FUNC2(apn), apn);
	if (*auth_type)
		FUNC0(&msg, 0x16, FUNC2(auth_type), auth_type);
	if (*user) {
		if (!*auth_type) {
			unsigned char x;
			x = 3;
			FUNC0(&msg, 0x16, 1, &x);
		}
		FUNC0(&msg, 0x17, FUNC2(user), user);
		if (*pass)
			FUNC0(&msg, 0x18, FUNC2(pass), pass);
	}
	return FUNC1(ctxt, &msg);
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
struct snmp_pdu {int request_id; } ;
struct asn_buf {int /*<<< orphan*/ * asn_ptr; int /*<<< orphan*/  asn_len; } ;
typedef  int ssize_t ;
typedef  int int32_t ;
struct TYPE_4__ {int /*<<< orphan*/  fd; scalar_t__ dump_pdus; int /*<<< orphan*/  txbuflen; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 TYPE_1__ snmp_client ; 
 int FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (struct snmp_pdu*) ; 
 scalar_t__ FUNC6 (struct snmp_pdu*,struct asn_buf*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int32_t
FUNC8(struct snmp_pdu * pdu)
{
	u_char *buf;
	struct asn_buf b;
	ssize_t ret;

	if ((buf = FUNC0(1, snmp_client.txbuflen)) == NULL) {
		FUNC3(&snmp_client, "%s", FUNC7(errno));
		return (-1);
	}

	pdu->request_id = FUNC4(&snmp_client);

	b.asn_ptr = buf;
	b.asn_len = snmp_client.txbuflen;
	if (FUNC6(pdu, &b)) {
		FUNC3(&snmp_client, "%s", FUNC7(errno));
		FUNC1(buf);
		return (-1);
	}

	if (snmp_client.dump_pdus)
		FUNC5(pdu);

	if ((ret = FUNC2(snmp_client.fd, buf, b.asn_ptr - buf, 0)) == -1) {
		FUNC3(&snmp_client, "%s", FUNC7(errno));
		FUNC1(buf);
		return (-1);
	}
	FUNC1(buf);

	return (pdu->request_id);
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
struct snmp_pdu {int dummy; } ;
struct asn_buf {int /*<<< orphan*/ * asn_ptr; int /*<<< orphan*/  asn_len; } ;
typedef  enum snmp_code { ____Placeholder_snmp_code } snmp_code ;
struct TYPE_4__ {scalar_t__ dump_pdus; } ;
struct TYPE_3__ {int /*<<< orphan*/  txbuf; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_ERR ; 
 int SNMP_CODE_OK ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_2__ debug ; 
 int /*<<< orphan*/  FUNC1 (struct snmp_pdu*) ; 
 int FUNC2 (struct snmp_pdu*,struct asn_buf*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 TYPE_1__ snmpd ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 

void
FUNC5(struct snmp_pdu *pdu, u_char *sndbuf, size_t *sndlen,
    const char *dest)
{
	struct asn_buf resp_b;
	enum snmp_code code;

	resp_b.asn_ptr = sndbuf;
	resp_b.asn_len = snmpd.txbuf;

	if ((code = FUNC2(pdu, &resp_b)) != SNMP_CODE_OK) {
		FUNC4(LOG_ERR, "cannot encode message (code=%d)", code);
		FUNC0();
	}
	if (debug.dump_pdus) {
		FUNC3("%s <- ", dest);
		FUNC1(pdu);
	}
	*sndlen = (size_t)(resp_b.asn_ptr - sndbuf);
}
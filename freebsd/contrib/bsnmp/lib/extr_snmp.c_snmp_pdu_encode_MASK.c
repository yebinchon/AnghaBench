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
typedef  size_t u_int ;
struct snmp_pdu {size_t nbindings; int /*<<< orphan*/ * bindings; } ;
struct asn_buf {int dummy; } ;
typedef  enum snmp_code { ____Placeholder_snmp_code } snmp_code ;

/* Variables and functions */
 scalar_t__ ASN_ERR_OK ; 
 int SNMP_CODE_FAILED ; 
 int SNMP_CODE_OK ; 
 scalar_t__ FUNC0 (struct asn_buf*,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct asn_buf*,struct snmp_pdu*) ; 
 int FUNC2 (struct asn_buf*,struct snmp_pdu*) ; 

enum snmp_code
FUNC3(struct snmp_pdu *pdu, struct asn_buf *resp_b)
{
	u_int idx;
	enum snmp_code err;

	if ((err = FUNC2(resp_b, pdu)) != SNMP_CODE_OK)
		return (err);
	for (idx = 0; idx < pdu->nbindings; idx++)
		if (FUNC0(resp_b, &pdu->bindings[idx])
		    != ASN_ERR_OK)
			return (SNMP_CODE_FAILED);

	return (FUNC1(resp_b, pdu));
}
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
struct snmp_pdu {scalar_t__ version; scalar_t__ security_model; } ;
struct asn_buf {int dummy; } ;
typedef  int /*<<< orphan*/  int32_t ;
typedef  enum snmp_code { ____Placeholder_snmp_code } snmp_code ;

/* Variables and functions */
#define  SNMP_CODE_BADENC 129 
 int SNMP_CODE_BADVERS ; 
#define  SNMP_CODE_FAILED 128 
 int SNMP_CODE_OK ; 
 scalar_t__ SNMP_SECMODEL_USM ; 
 scalar_t__ SNMP_V3 ; 
 scalar_t__ SNMP_Verr ; 
 int FUNC0 (struct asn_buf*,struct snmp_pdu*) ; 
 int FUNC1 (struct asn_buf*,struct snmp_pdu*,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct asn_buf*,struct snmp_pdu*) ; 
 int /*<<< orphan*/  FUNC3 (struct snmp_pdu*) ; 

enum snmp_code
FUNC4(struct asn_buf *b, struct snmp_pdu *pdu, int32_t *ip)
{
	enum snmp_code code;

	if ((code = FUNC0(b, pdu)) != SNMP_CODE_OK)
		return (code);

	if (pdu->version == SNMP_V3) {
		if (pdu->security_model != SNMP_SECMODEL_USM)
			return (SNMP_CODE_FAILED);
		if ((code = FUNC2(b, pdu)) != SNMP_CODE_OK)
			return (code);
	}

	code = FUNC1(b, pdu, ip);

	switch (code) {
	  case SNMP_CODE_FAILED:
		FUNC3(pdu);
		break;

	  case SNMP_CODE_BADENC:
		if (pdu->version == SNMP_Verr)
			return (SNMP_CODE_BADVERS);

	  default:
		break;
	}

	return (code);
}
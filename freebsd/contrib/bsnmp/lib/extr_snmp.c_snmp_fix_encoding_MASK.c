#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ priv_proto; } ;
struct snmp_pdu {scalar_t__ version; scalar_t__ security_model; size_t digest_ptr; int flags; int /*<<< orphan*/  msg_digest; scalar_t__ outer_ptr; scalar_t__ outer_len; scalar_t__ encrypted_ptr; TYPE_1__ user; scalar_t__ scoped_ptr; scalar_t__ scoped_len; scalar_t__ pdu_ptr; scalar_t__ vars_ptr; } ;
struct asn_buf {scalar_t__ asn_ptr; } ;
typedef  enum snmp_code { ____Placeholder_snmp_code } snmp_code ;

/* Variables and functions */
 scalar_t__ ASN_ERR_OK ; 
 int SNMP_CODE_FAILED ; 
 scalar_t__ SNMP_CODE_OK ; 
 int SNMP_MSG_AUTH_FLAG ; 
 scalar_t__ SNMP_PRIV_NOPRIV ; 
 scalar_t__ SNMP_SECMODEL_USM ; 
 scalar_t__ SNMP_V3 ; 
 scalar_t__ FUNC0 (struct asn_buf*,scalar_t__,size_t*) ; 
 int /*<<< orphan*/  FUNC1 (size_t,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct snmp_pdu*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct snmp_pdu*) ; 
 scalar_t__ FUNC4 (struct asn_buf*,struct snmp_pdu*) ; 

enum snmp_code
FUNC5(struct asn_buf *b, struct snmp_pdu *pdu)
{
	size_t moved = 0;
	enum snmp_code code;

	if (FUNC0(b, pdu->vars_ptr, NULL) != ASN_ERR_OK ||
	    FUNC0(b, pdu->pdu_ptr, NULL) != ASN_ERR_OK)
		return (SNMP_CODE_FAILED);

	if (pdu->version == SNMP_V3) {
		if (FUNC0(b, pdu->scoped_ptr, NULL) != ASN_ERR_OK)
			return (SNMP_CODE_FAILED);

		pdu->scoped_len = b->asn_ptr - pdu->scoped_ptr;
		if (FUNC4(b, pdu) != ASN_ERR_OK)
			return (SNMP_CODE_FAILED);

		if (pdu->security_model != SNMP_SECMODEL_USM)
			return (SNMP_CODE_FAILED);

		if (FUNC3(pdu) != SNMP_CODE_OK)
			return (SNMP_CODE_FAILED);

		if (pdu->user.priv_proto != SNMP_PRIV_NOPRIV &&
		    FUNC0(b, pdu->encrypted_ptr, NULL) != ASN_ERR_OK)
			return (SNMP_CODE_FAILED);
	}

	if (FUNC0(b, pdu->outer_ptr, &moved) != ASN_ERR_OK)
		return (SNMP_CODE_FAILED);

	pdu->outer_len = b->asn_ptr - pdu->outer_ptr;
	pdu->digest_ptr -= moved;

	if (pdu->version == SNMP_V3) {
		if ((code = FUNC2(pdu, pdu->msg_digest)) !=
		    SNMP_CODE_OK)
			return (SNMP_CODE_FAILED);

		if ((pdu->flags & SNMP_MSG_AUTH_FLAG) != 0)
			FUNC1(pdu->digest_ptr, pdu->msg_digest,
			    sizeof(pdu->msg_digest));
	}

	return (SNMP_CODE_OK);
}
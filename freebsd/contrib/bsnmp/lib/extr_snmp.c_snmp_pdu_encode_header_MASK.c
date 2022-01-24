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
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_2__ {int max_msg_size; } ;
struct snmp_pdu {scalar_t__ version; int identifier; int type; int security_model; int context_engine_len; int generic_trap; int specific_trap; int request_id; int error_status; int error_index; int /*<<< orphan*/ * vars_ptr; int /*<<< orphan*/  time_stamp; int /*<<< orphan*/  agent_addr; int /*<<< orphan*/  enterprise; int /*<<< orphan*/ * pdu_ptr; scalar_t__ community; scalar_t__ context_name; scalar_t__ context_engine; int /*<<< orphan*/ * scoped_ptr; int /*<<< orphan*/  flags; TYPE_1__ engine; int /*<<< orphan*/ * outer_ptr; } ;
struct asn_buf {int dummy; } ;
typedef  enum snmp_code { ____Placeholder_snmp_code } snmp_code ;
typedef  enum asn_err { ____Placeholder_asn_err } asn_err ;

/* Variables and functions */
 int ASN_CLASS_CONTEXT ; 
 scalar_t__ ASN_ERR_OK ; 
 int ASN_TYPE_CONSTRUCTED ; 
 int ASN_TYPE_SEQUENCE ; 
 int SNMP_CODE_BADVERS ; 
 int SNMP_CODE_FAILED ; 
 scalar_t__ SNMP_CODE_OK ; 
 int /*<<< orphan*/  SNMP_MSG_REPORT_FLAG ; 
 int SNMP_PDU_GETBULK ; 
 int SNMP_PDU_INFORM ; 
 int SNMP_PDU_REPORT ; 
 int SNMP_PDU_RESPONSE ; 
 int SNMP_PDU_TRAP ; 
 int SNMP_PDU_TRAP2 ; 
 int SNMP_SECMODEL_USM ; 
 scalar_t__ SNMP_V1 ; 
 scalar_t__ SNMP_V2c ; 
 scalar_t__ SNMP_V3 ; 
 scalar_t__ FUNC0 (struct asn_buf*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct asn_buf*,int) ; 
 scalar_t__ FUNC2 (struct asn_buf*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct asn_buf*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct asn_buf*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (struct asn_buf*,int,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC6 (struct asn_buf*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct asn_buf*,struct snmp_pdu*) ; 
 int FUNC8 (scalar_t__) ; 

enum snmp_code
FUNC9(struct asn_buf *b, struct snmp_pdu *pdu)
{
	enum asn_err err;
	u_char *v3_hdr_ptr;

	if (FUNC5(b, (ASN_TYPE_SEQUENCE|ASN_TYPE_CONSTRUCTED),
	    &pdu->outer_ptr) != ASN_ERR_OK)
		return (SNMP_CODE_FAILED);

	if (pdu->version == SNMP_V1)
		err = FUNC1(b, 0);
	else if (pdu->version == SNMP_V2c)
		err = FUNC1(b, 1);
	else if (pdu->version == SNMP_V3)
		err = FUNC1(b, 3);
	else
		return (SNMP_CODE_BADVERS);
	if (err != ASN_ERR_OK)
		return (SNMP_CODE_FAILED);

	if (pdu->version == SNMP_V3) {
		if (FUNC5(b, (ASN_TYPE_SEQUENCE |
		    ASN_TYPE_CONSTRUCTED), &v3_hdr_ptr) != ASN_ERR_OK)
			return (SNMP_CODE_FAILED);

		if (FUNC1(b, pdu->identifier) != ASN_ERR_OK)
			return (SNMP_CODE_FAILED);

		if (FUNC1(b, pdu->engine.max_msg_size) != ASN_ERR_OK)
			return (SNMP_CODE_FAILED);

		if (pdu->type != SNMP_PDU_RESPONSE &&
		    pdu->type != SNMP_PDU_TRAP &&
		    pdu->type != SNMP_PDU_TRAP2 &&
		    pdu->type != SNMP_PDU_REPORT)
			pdu->flags |= SNMP_MSG_REPORT_FLAG;

		if (FUNC4(b, (u_char *)&pdu->flags, 1)
		    != ASN_ERR_OK)
			return (SNMP_CODE_FAILED);

		if (FUNC1(b, pdu->security_model) != ASN_ERR_OK)
			return (SNMP_CODE_FAILED);

		if (FUNC0(b, v3_hdr_ptr, NULL) != ASN_ERR_OK)
			return (SNMP_CODE_FAILED);

		if (pdu->security_model != SNMP_SECMODEL_USM)
			return (SNMP_CODE_FAILED);

		if (FUNC7(b, pdu) != SNMP_CODE_OK)
			return (SNMP_CODE_FAILED);

		/*  View-based Access Conntrol information */
		if (FUNC5(b, (ASN_TYPE_SEQUENCE |
		    ASN_TYPE_CONSTRUCTED), &pdu->scoped_ptr) != ASN_ERR_OK)
			return (SNMP_CODE_FAILED);

		if (FUNC4(b, (u_char *)pdu->context_engine,
		    pdu->context_engine_len) != ASN_ERR_OK)
			return (SNMP_CODE_FAILED);

		if (FUNC4(b, (u_char *)pdu->context_name,
		    FUNC8(pdu->context_name)) != ASN_ERR_OK)
			return (SNMP_CODE_FAILED);
	} else {
		if (FUNC4(b, (u_char *)pdu->community,
		    FUNC8(pdu->community)) != ASN_ERR_OK)
			return (SNMP_CODE_FAILED);
	}

	if (FUNC5(b, (ASN_TYPE_CONSTRUCTED | ASN_CLASS_CONTEXT |
	    pdu->type), &pdu->pdu_ptr) != ASN_ERR_OK)
		return (SNMP_CODE_FAILED);

	if (pdu->type == SNMP_PDU_TRAP) {
		if (pdu->version != SNMP_V1 ||
		    FUNC3(b, &pdu->enterprise) != ASN_ERR_OK ||
		    FUNC2(b, pdu->agent_addr) != ASN_ERR_OK ||
		    FUNC1(b, pdu->generic_trap) != ASN_ERR_OK ||
		    FUNC1(b, pdu->specific_trap) != ASN_ERR_OK ||
		    FUNC6(b, pdu->time_stamp) != ASN_ERR_OK)
			return (SNMP_CODE_FAILED);
	} else {
		if (pdu->version == SNMP_V1 && (pdu->type == SNMP_PDU_GETBULK ||
		    pdu->type == SNMP_PDU_INFORM ||
		    pdu->type == SNMP_PDU_TRAP2 ||
		    pdu->type == SNMP_PDU_REPORT))
			return (SNMP_CODE_FAILED);

		if (FUNC1(b, pdu->request_id) != ASN_ERR_OK ||
		    FUNC1(b, pdu->error_status) != ASN_ERR_OK ||
		    FUNC1(b, pdu->error_index) != ASN_ERR_OK)
			return (SNMP_CODE_FAILED);
	}

	if (FUNC5(b, (ASN_TYPE_SEQUENCE|ASN_TYPE_CONSTRUCTED),
	    &pdu->vars_ptr) != ASN_ERR_OK)
		return (SNMP_CODE_FAILED);

	return (SNMP_CODE_OK);
}
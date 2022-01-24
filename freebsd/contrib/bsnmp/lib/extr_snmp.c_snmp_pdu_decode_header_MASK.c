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
typedef  size_t u_int ;
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_2__ {int max_msg_size; } ;
struct snmp_pdu {scalar_t__ outer_len; scalar_t__ version; int identifier; int security_model; char* community; int /*<<< orphan*/  flags; TYPE_1__ engine; int /*<<< orphan*/  outer_ptr; } ;
struct asn_buf {scalar_t__ asn_len; int /*<<< orphan*/  asn_ptr; } ;
typedef  int int32_t ;
typedef  enum snmp_code { ____Placeholder_snmp_code } snmp_code ;
typedef  scalar_t__ asn_len_t ;

/* Variables and functions */
 scalar_t__ ASN_ERR_OK ; 
 int SNMP_CODE_BADENC ; 
 int SNMP_CODE_FAILED ; 
 int SNMP_CODE_OK ; 
 size_t SNMP_COMMUNITY_MAXLEN ; 
 scalar_t__ SNMP_SECMODEL_USM ; 
 scalar_t__ SNMP_V1 ; 
 scalar_t__ SNMP_V2c ; 
 scalar_t__ SNMP_V3 ; 
 scalar_t__ SNMP_Verr ; 
 scalar_t__ FUNC0 (struct asn_buf*,int*) ; 
 scalar_t__ FUNC1 (struct asn_buf*,int /*<<< orphan*/ *,size_t*) ; 
 scalar_t__ FUNC2 (struct asn_buf*,scalar_t__*) ; 
 scalar_t__ FUNC3 (struct asn_buf*,struct snmp_pdu*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

enum snmp_code
FUNC5(struct asn_buf *b, struct snmp_pdu *pdu)
{
	int32_t version;
	u_int octs_len;
	asn_len_t len;

	pdu->outer_ptr = b->asn_ptr;
	pdu->outer_len = b->asn_len;

	if (FUNC2(b, &len) != ASN_ERR_OK) {
		FUNC4("cannot decode pdu header");
		return (SNMP_CODE_FAILED);
	}
	if (b->asn_len < len) {
		FUNC4("outer sequence value too short");
		return (SNMP_CODE_FAILED);
	}
	if (b->asn_len != len) {
		FUNC4("ignoring trailing junk in message");
		b->asn_len = len;
	}

	if (FUNC0(b, &version) != ASN_ERR_OK) {
		FUNC4("cannot decode version");
		return (SNMP_CODE_FAILED);
	}

	if (version == 0)
		pdu->version = SNMP_V1;
	else if (version == 1)
		pdu->version = SNMP_V2c;
	else if (version == 3)
		pdu->version = SNMP_V3;
	else {
		pdu->version = SNMP_Verr;
		FUNC4("unsupported SNMP version");
		return (SNMP_CODE_BADENC);
	}

	if (pdu->version == SNMP_V3) {
		if (FUNC2(b, &len) != ASN_ERR_OK) {
			FUNC4("cannot decode pdu global data header");
			return (SNMP_CODE_FAILED);
		}

		if (FUNC0(b, &pdu->identifier) != ASN_ERR_OK) {
			FUNC4("cannot decode msg indetifier");
			return (SNMP_CODE_FAILED);
		}

		if (FUNC0(b, &pdu->engine.max_msg_size)
		    != ASN_ERR_OK) {
			FUNC4("cannot decode msg size");
			return (SNMP_CODE_FAILED);
		}

		octs_len = 1;
		if (FUNC1(b, (u_char *)&pdu->flags,
		    &octs_len) != ASN_ERR_OK) {
			FUNC4("cannot decode msg flags");
			return (SNMP_CODE_FAILED);
		}

		if (FUNC0(b, &pdu->security_model) != ASN_ERR_OK) {
			FUNC4("cannot decode msg size");
			return (SNMP_CODE_FAILED);
		}

		if (pdu->security_model != SNMP_SECMODEL_USM)
			return (SNMP_CODE_FAILED);

		if (FUNC3(b, pdu) != ASN_ERR_OK)
			return (SNMP_CODE_FAILED);
	} else {
		octs_len = SNMP_COMMUNITY_MAXLEN;
		if (FUNC1(b, (u_char *)pdu->community,
		    &octs_len) != ASN_ERR_OK) {
			FUNC4("cannot decode community");
			return (SNMP_CODE_FAILED);
		}
		pdu->community[octs_len] = '\0';
	}

	return (SNMP_CODE_OK);
}
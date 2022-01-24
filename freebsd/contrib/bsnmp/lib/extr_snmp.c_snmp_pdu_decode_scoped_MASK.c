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
typedef  int u_char ;
struct snmp_pdu {scalar_t__ version; size_t context_engine_len; char* context_name; int type; int /*<<< orphan*/  context_engine; } ;
struct asn_buf {size_t asn_len; } ;
typedef  int /*<<< orphan*/  int32_t ;
typedef  enum snmp_code { ____Placeholder_snmp_code } snmp_code ;
typedef  enum asn_err { ____Placeholder_asn_err } asn_err ;
typedef  size_t asn_len_t ;

/* Variables and functions */
 int ASN_CLASS_CONTEXT ; 
 scalar_t__ ASN_ERR_OK ; 
 scalar_t__ FUNC0 (int) ; 
 int ASN_TYPE_CONSTRUCTED ; 
 int ASN_TYPE_MASK ; 
 int SNMP_CODE_FAILED ; 
 int SNMP_CODE_OK ; 
 size_t SNMP_CONTEXT_NAME_SIZ ; 
 size_t SNMP_ENGINE_ID_SIZ ; 
#define  SNMP_PDU_GET 136 
#define  SNMP_PDU_GETBULK 135 
#define  SNMP_PDU_GETNEXT 134 
#define  SNMP_PDU_INFORM 133 
#define  SNMP_PDU_REPORT 132 
#define  SNMP_PDU_RESPONSE 131 
#define  SNMP_PDU_SET 130 
#define  SNMP_PDU_TRAP 129 
#define  SNMP_PDU_TRAP2 128 
 scalar_t__ SNMP_V1 ; 
 scalar_t__ SNMP_V3 ; 
 scalar_t__ FUNC1 (struct asn_buf*,int*,size_t*) ; 
 scalar_t__ FUNC2 (struct asn_buf*,int*,size_t*) ; 
 scalar_t__ FUNC3 (struct asn_buf*,size_t*) ; 
 int FUNC4 (struct asn_buf*,struct snmp_pdu*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 

enum snmp_code
FUNC6(struct asn_buf *b, struct snmp_pdu *pdu, int32_t *ip)
{
	u_char type;
	asn_len_t len, trailer;
	enum asn_err err;

	if (pdu->version == SNMP_V3) {
		if (FUNC3(b, &len) != ASN_ERR_OK) {
			FUNC5("cannot decode scoped pdu header");
			return (SNMP_CODE_FAILED);
		}

		len = SNMP_ENGINE_ID_SIZ;
		if (FUNC2(b, (u_char *)&pdu->context_engine,
		    &len) != ASN_ERR_OK) {
			FUNC5("cannot decode msg context engine");
			return (SNMP_CODE_FAILED);
		}
		pdu->context_engine_len = len;

		len = SNMP_CONTEXT_NAME_SIZ;
		if (FUNC2(b, (u_char *)&pdu->context_name,
		    &len) != ASN_ERR_OK) {
			FUNC5("cannot decode msg context name");
			return (SNMP_CODE_FAILED);
		}
		pdu->context_name[len] = '\0';
	}

	if (FUNC1(b, &type, &len) != ASN_ERR_OK) {
		FUNC5("cannot get pdu header");
		return (SNMP_CODE_FAILED);
	}
	if ((type & ~ASN_TYPE_MASK) !=
	    (ASN_TYPE_CONSTRUCTED | ASN_CLASS_CONTEXT)) {
		FUNC5("bad pdu header tag");
		return (SNMP_CODE_FAILED);
	}
	pdu->type = type & ASN_TYPE_MASK;

	switch (pdu->type) {

	  case SNMP_PDU_GET:
	  case SNMP_PDU_GETNEXT:
	  case SNMP_PDU_RESPONSE:
	  case SNMP_PDU_SET:
		break;

	  case SNMP_PDU_TRAP:
		if (pdu->version != SNMP_V1) {
			FUNC5("bad pdu type %u", pdu->type);
			return (SNMP_CODE_FAILED);
		}
		break;

	  case SNMP_PDU_GETBULK:
	  case SNMP_PDU_INFORM:
	  case SNMP_PDU_TRAP2:
	  case SNMP_PDU_REPORT:
		if (pdu->version == SNMP_V1) {
			FUNC5("bad pdu type %u", pdu->type);
			return (SNMP_CODE_FAILED);
		}
		break;

	  default:
		FUNC5("bad pdu type %u", pdu->type);
		return (SNMP_CODE_FAILED);
	}

	trailer = b->asn_len - len;
	b->asn_len = len;

	err = FUNC4(b, pdu, ip);
	if (FUNC0(err))
		return (SNMP_CODE_FAILED);

	if (b->asn_len != 0)
		FUNC5("ignoring trailing junk after pdu");

	b->asn_len = trailer;

	return (SNMP_CODE_OK);
}
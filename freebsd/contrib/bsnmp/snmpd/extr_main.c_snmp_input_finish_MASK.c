#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
struct snmp_pdu {scalar_t__ version; int type; int /*<<< orphan*/  error_index; int /*<<< orphan*/  error_status; } ;
struct asn_buf {size_t asn_len; int /*<<< orphan*/ * asn_ptr; int /*<<< orphan*/  const* asn_cptr; } ;
typedef  int /*<<< orphan*/  int32_t ;
typedef  enum snmpd_input_err { ____Placeholder_snmpd_input_err } snmpd_input_err ;
typedef  enum snmp_ret { ____Placeholder_snmp_ret } snmp_ret ;
struct TYPE_6__ {scalar_t__ dump_pdus; } ;
struct TYPE_5__ {size_t txbuf; } ;
struct TYPE_4__ {int /*<<< orphan*/  silentDrops; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_WARNING ; 
 int SNMPD_INPUT_FAILED ; 
 int SNMPD_INPUT_OK ; 
 int SNMPD_INPUT_VALBADLEN ; 
 int SNMPD_INPUT_VALRANGE ; 
 int /*<<< orphan*/  SNMP_ERR_BADVALUE ; 
 int /*<<< orphan*/  SNMP_ERR_WRONG_ENCODING ; 
 int /*<<< orphan*/  SNMP_ERR_WRONG_LENGTH ; 
 int /*<<< orphan*/  SNMP_ERR_WRONG_VALUE ; 
#define  SNMP_PDU_GET 134 
#define  SNMP_PDU_GETBULK 133 
#define  SNMP_PDU_GETNEXT 132 
#define  SNMP_PDU_SET 131 
#define  SNMP_RET_ERR 130 
#define  SNMP_RET_IGN 129 
#define  SNMP_RET_OK 128 
 scalar_t__ SNMP_V1 ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_3__ debug ; 
 int FUNC1 (struct snmp_pdu*,struct asn_buf*,struct snmp_pdu*,void*) ; 
 int FUNC2 (struct snmp_pdu*,struct asn_buf*,struct snmp_pdu*,void*) ; 
 int FUNC3 (struct snmp_pdu*,struct asn_buf*,struct snmp_pdu*,void*) ; 
 scalar_t__ const FUNC4 (struct snmp_pdu*,struct asn_buf*,struct asn_buf*) ; 
 int /*<<< orphan*/  FUNC5 (struct snmp_pdu*) ; 
 int /*<<< orphan*/  FUNC6 (struct snmp_pdu*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*) ; 
 int FUNC8 (struct snmp_pdu*,struct asn_buf*,struct snmp_pdu*,void*) ; 
 TYPE_2__ snmpd ; 
 TYPE_1__ snmpd_stats ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 

enum snmpd_input_err
FUNC10(struct snmp_pdu *pdu, const u_char *rcvbuf, size_t rcvlen,
    u_char *sndbuf, size_t *sndlen, const char *source,
    enum snmpd_input_err ierr, int32_t ivar, void *data)
{
	struct snmp_pdu resp;
	struct asn_buf resp_b, pdu_b;
	enum snmp_ret ret;

	resp_b.asn_ptr = sndbuf;
	resp_b.asn_len = snmpd.txbuf;

	pdu_b.asn_cptr = rcvbuf;
	pdu_b.asn_len = rcvlen;

	if (ierr != SNMPD_INPUT_OK) {
		/* error decoding the input of a SET */
		if (pdu->version == SNMP_V1)
			pdu->error_status = SNMP_ERR_BADVALUE;
		else if (ierr == SNMPD_INPUT_VALBADLEN)
			pdu->error_status = SNMP_ERR_WRONG_LENGTH;
		else if (ierr == SNMPD_INPUT_VALRANGE)
			pdu->error_status = SNMP_ERR_WRONG_VALUE;
		else
			pdu->error_status = SNMP_ERR_WRONG_ENCODING;

		pdu->error_index = ivar;

		if (FUNC4(pdu, &pdu_b, &resp_b) == SNMP_RET_IGN) {
			FUNC9(LOG_WARNING, "could not encode error response");
			snmpd_stats.silentDrops++;
			return (SNMPD_INPUT_FAILED);
		}

		if (debug.dump_pdus) {
			FUNC7("%s <- ", source);
			FUNC5(pdu);
		}
		*sndlen = (size_t)(resp_b.asn_ptr - sndbuf);
		return (SNMPD_INPUT_OK);
	}

	switch (pdu->type) {

	  case SNMP_PDU_GET:
		ret = FUNC1(pdu, &resp_b, &resp, data);
		break;

	  case SNMP_PDU_GETNEXT:
		ret = FUNC3(pdu, &resp_b, &resp, data);
		break;

	  case SNMP_PDU_SET:
		ret = FUNC8(pdu, &resp_b, &resp, data);
		break;

	  case SNMP_PDU_GETBULK:
		ret = FUNC2(pdu, &resp_b, &resp, data);
		break;

	  default:
		ret = SNMP_RET_IGN;
		break;
	}

	switch (ret) {

	  case SNMP_RET_OK:
		/* normal return - send a response */
		if (debug.dump_pdus) {
			FUNC7("%s <- ", source);
			FUNC5(&resp);
		}
		*sndlen = (size_t)(resp_b.asn_ptr - sndbuf);
		FUNC6(&resp);
		return (SNMPD_INPUT_OK);

	  case SNMP_RET_IGN:
		/* error - send nothing */
		snmpd_stats.silentDrops++;
		return (SNMPD_INPUT_FAILED);

	  case SNMP_RET_ERR:
		/* error - send error response. The snmp routine has
		 * changed the error fields in the original message. */
		resp_b.asn_ptr = sndbuf;
		resp_b.asn_len = snmpd.txbuf;
		if (FUNC4(pdu, &pdu_b, &resp_b) == SNMP_RET_IGN) {
			FUNC9(LOG_WARNING, "could not encode error response");
			snmpd_stats.silentDrops++;
			return (SNMPD_INPUT_FAILED);
		} else {
			if (debug.dump_pdus) {
				FUNC7("%s <- ", source);
				FUNC5(pdu);
			}
			*sndlen = (size_t)(resp_b.asn_ptr - sndbuf);
			return (SNMPD_INPUT_OK);
		}
	}
	FUNC0();
}
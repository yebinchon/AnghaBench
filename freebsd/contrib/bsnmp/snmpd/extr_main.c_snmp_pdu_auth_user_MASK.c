#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ engine_len; scalar_t__ engine_boots; scalar_t__ engine_time; int /*<<< orphan*/  engine_id; } ;
struct TYPE_7__ {scalar_t__ priv_proto; scalar_t__ auth_proto; int /*<<< orphan*/  auth_key; int /*<<< orphan*/  priv_key; int /*<<< orphan*/  sec_name; } ;
struct snmp_pdu {int flags; TYPE_2__ engine; TYPE_1__ user; } ;
typedef  enum snmp_code { ____Placeholder_snmp_code } snmp_code ;
struct TYPE_11__ {int engine_len; scalar_t__ engine_boots; scalar_t__ engine_time; int /*<<< orphan*/  engine_id; } ;
struct TYPE_9__ {scalar_t__ priv_proto; scalar_t__ auth_proto; int /*<<< orphan*/  auth_key; int /*<<< orphan*/  priv_key; } ;
struct TYPE_10__ {int status; scalar_t__ user_engine_len; TYPE_3__ suser; int /*<<< orphan*/  user_engine_id; } ;

/* Variables and functions */
 scalar_t__ SNMP_AUTH_NOAUTH ; 
 int SNMP_CODE_BADENGINE ; 
 int SNMP_CODE_BADSECLEVEL ; 
 int SNMP_CODE_BADUSER ; 
 int SNMP_CODE_NOTINTIME ; 
 int SNMP_CODE_OK ; 
 int SNMP_MSG_AUTH_FLAG ; 
 int SNMP_MSG_AUTODISCOVER ; 
 int SNMP_MSG_PRIV_FLAG ; 
 scalar_t__ SNMP_PRIV_NOPRIV ; 
 scalar_t__ SNMP_TIME_WINDOW ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_6__ snmpd_engine ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 TYPE_4__* FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 TYPE_4__* usm_user ; 

__attribute__((used)) static enum snmp_code
FUNC6(struct snmp_pdu *pdu)
{
	usm_user = NULL;

	/* un-authenticated snmpEngineId discovery */
	if (pdu->engine.engine_len == 0 && FUNC3(pdu->user.sec_name) == 0) {
		pdu->engine.engine_len = snmpd_engine.engine_len;
		FUNC2(pdu->engine.engine_id, snmpd_engine.engine_id,
		    snmpd_engine.engine_len);
		FUNC4();
		pdu->engine.engine_boots = snmpd_engine.engine_boots;
		pdu->engine.engine_time = snmpd_engine.engine_time;
		pdu->flags |= SNMP_MSG_AUTODISCOVER;
		return (SNMP_CODE_OK);
	}

	if ((usm_user = FUNC5(pdu->engine.engine_id,
	    pdu->engine.engine_len, pdu->user.sec_name)) == NULL ||
	    usm_user->status != 1 /* active */)
		return (SNMP_CODE_BADUSER);

	if (usm_user->user_engine_len != snmpd_engine.engine_len ||
	    FUNC1(usm_user->user_engine_id, snmpd_engine.engine_id,
	    snmpd_engine.engine_len) != 0)
		return (SNMP_CODE_BADENGINE);

	pdu->user.priv_proto = usm_user->suser.priv_proto;
	FUNC2(pdu->user.priv_key, usm_user->suser.priv_key,
	    sizeof(pdu->user.priv_key));

	/* authenticated snmpEngineId discovery */
	if ((pdu->flags & SNMP_MSG_AUTH_FLAG) != 0) {
		FUNC4();
		pdu->user.auth_proto = usm_user->suser.auth_proto;
		FUNC2(pdu->user.auth_key, usm_user->suser.auth_key,
		    sizeof(pdu->user.auth_key));

		if (pdu->engine.engine_boots == 0 &&
		    pdu->engine.engine_time == 0) {
			FUNC4();
		    	pdu->flags |= SNMP_MSG_AUTODISCOVER;
			return (SNMP_CODE_OK);
		}

		if (pdu->engine.engine_boots != snmpd_engine.engine_boots ||
		    FUNC0(pdu->engine.engine_time - snmpd_engine.engine_time) >
		    SNMP_TIME_WINDOW)
			return (SNMP_CODE_NOTINTIME);
	}

	if (((pdu->flags & SNMP_MSG_PRIV_FLAG) != 0 &&
	    (pdu->flags & SNMP_MSG_AUTH_FLAG) == 0) ||
	    ((pdu->flags & SNMP_MSG_AUTH_FLAG) == 0 &&
	    usm_user->suser.auth_proto != SNMP_AUTH_NOAUTH) ||
	    ((pdu->flags & SNMP_MSG_PRIV_FLAG) == 0 &&
	    usm_user->suser.priv_proto != SNMP_PRIV_NOPRIV))
		return (SNMP_CODE_BADSECLEVEL);

	return (SNMP_CODE_OK);
}
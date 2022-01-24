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
struct snmp_pdu {scalar_t__ version; scalar_t__ error_status; scalar_t__ nbindings; TYPE_1__* bindings; } ;
struct TYPE_2__ {scalar_t__ syntax; int /*<<< orphan*/  var; } ;

/* Variables and functions */
 scalar_t__ SNMP_ERR_NOERROR ; 
 scalar_t__ SNMP_ERR_NOSUCHNAME ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static int
FUNC2(const struct snmp_pdu * req, const struct snmp_pdu * resp)
{
	u_int i;

	if (resp->version != req->version) {
		FUNC1("SNMP SET: response has wrong version");
		return (-1);
	}

	if (resp->error_status == SNMP_ERR_NOSUCHNAME) {
		FUNC1("SNMP SET: error %d", resp->error_status);
		return (0);
	}
	if (resp->error_status != SNMP_ERR_NOERROR) {
		FUNC1("SNMP SET: error %d", resp->error_status);
		return (-1);
	}

	if (resp->nbindings != req->nbindings) {
		FUNC1("SNMP SET: bad number of bindings in response");
		return (-1);
	}
	for (i = 0; i < req->nbindings; i++) {
		if (FUNC0(&req->bindings[i].var,
		    &resp->bindings[i].var) != 0) {
			FUNC1("SNMP SET: wrong OID in response to SET");
			return (-1);
		}
		if (resp->bindings[i].syntax != req->bindings[i].syntax) {
			FUNC1("SNMP SET: bad syntax in response");
			return (-1);
		}
	}
	return (1);
}
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
typedef  size_t u_int ;
struct TYPE_3__ {int len; int* octets; } ;
struct TYPE_4__ {int integer; int uint32; int counter64; int /*<<< orphan*/ * ipaddress; int /*<<< orphan*/  oid; TYPE_1__ octetstring; } ;
struct snmp_value {int syntax; TYPE_2__ v; int /*<<< orphan*/  var; } ;

/* Variables and functions */
 int ASN_OIDSTRLEN ; 
#define  SNMP_SYNTAX_COUNTER 139 
#define  SNMP_SYNTAX_COUNTER64 138 
#define  SNMP_SYNTAX_ENDOFMIBVIEW 137 
#define  SNMP_SYNTAX_GAUGE 136 
#define  SNMP_SYNTAX_INTEGER 135 
#define  SNMP_SYNTAX_IPADDRESS 134 
#define  SNMP_SYNTAX_NOSUCHINSTANCE 133 
#define  SNMP_SYNTAX_NOSUCHOBJECT 132 
#define  SNMP_SYNTAX_NULL 131 
#define  SNMP_SYNTAX_OCTETSTRING 130 
#define  SNMP_SYNTAX_OID 129 
#define  SNMP_SYNTAX_TIMETICKS 128 
 int FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static void
FUNC2(const struct snmp_value *b)
{
	u_int i;
	char buf[ASN_OIDSTRLEN];

	FUNC1("%s=", FUNC0(&b->var, buf));
	switch (b->syntax) {

	  case SNMP_SYNTAX_NULL:
		FUNC1("NULL");
		break;

	  case SNMP_SYNTAX_INTEGER:
		FUNC1("INTEGER %d", b->v.integer);
		break;

	  case SNMP_SYNTAX_OCTETSTRING:
		FUNC1("OCTET STRING %lu:", b->v.octetstring.len);
		for (i = 0; i < b->v.octetstring.len; i++)
			FUNC1(" %02x", b->v.octetstring.octets[i]);
		break;

	  case SNMP_SYNTAX_OID:
		FUNC1("OID %s", FUNC0(&b->v.oid, buf));
		break;

	  case SNMP_SYNTAX_IPADDRESS:
		FUNC1("IPADDRESS %u.%u.%u.%u", b->v.ipaddress[0],
		    b->v.ipaddress[1], b->v.ipaddress[2], b->v.ipaddress[3]);
		break;

	  case SNMP_SYNTAX_COUNTER:
		FUNC1("COUNTER %u", b->v.uint32);
		break;

	  case SNMP_SYNTAX_GAUGE:
		FUNC1("GAUGE %u", b->v.uint32);
		break;

	  case SNMP_SYNTAX_TIMETICKS:
		FUNC1("TIMETICKS %u", b->v.uint32);
		break;

	  case SNMP_SYNTAX_COUNTER64:
		FUNC1("COUNTER64 %lld", b->v.counter64);
		break;

	  case SNMP_SYNTAX_NOSUCHOBJECT:
		FUNC1("NoSuchObject");
		break;

	  case SNMP_SYNTAX_NOSUCHINSTANCE:
		FUNC1("NoSuchInstance");
		break;

	  case SNMP_SYNTAX_ENDOFMIBVIEW:
		FUNC1("EndOfMibView");
		break;

	  default:
		FUNC1("UNKNOWN SYNTAX %u", b->syntax);
		break;
	}
}
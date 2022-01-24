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
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_3__ {int /*<<< orphan*/  len; int /*<<< orphan*/  octets; } ;
struct TYPE_4__ {int /*<<< orphan*/  counter64; int /*<<< orphan*/  uint32; int /*<<< orphan*/  ipaddress; int /*<<< orphan*/  oid; TYPE_1__ octetstring; int /*<<< orphan*/  integer; } ;
struct snmp_value {int syntax; TYPE_2__ v; int /*<<< orphan*/  var; } ;
struct asn_buf {int dummy; } ;
typedef  enum asn_err { ____Placeholder_asn_err } asn_err ;

/* Variables and functions */
 int /*<<< orphan*/  ASN_APP_COUNTER ; 
 int /*<<< orphan*/  ASN_APP_GAUGE ; 
 int /*<<< orphan*/  ASN_APP_TIMETICKS ; 
 int ASN_ERR_OK ; 
 int /*<<< orphan*/  ASN_EXCEPT_ENDOFMIBVIEW ; 
 int /*<<< orphan*/  ASN_EXCEPT_NOSUCHINSTANCE ; 
 int /*<<< orphan*/  ASN_EXCEPT_NOSUCHOBJECT ; 
 int ASN_TYPE_CONSTRUCTED ; 
 int ASN_TYPE_SEQUENCE ; 
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
 int FUNC0 (struct asn_buf*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct asn_buf*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct asn_buf*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct asn_buf*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct asn_buf*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct asn_buf*) ; 
 int FUNC6 (struct asn_buf*,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct asn_buf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct asn_buf*,int,int /*<<< orphan*/ **) ; 
 int FUNC9 (struct asn_buf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

enum asn_err
FUNC10(struct asn_buf *b, const struct snmp_value *binding)
{
	u_char *ptr;
	enum asn_err err;
	struct asn_buf save = *b;

	if ((err = FUNC8(b, (ASN_TYPE_SEQUENCE |
	    ASN_TYPE_CONSTRUCTED), &ptr)) != ASN_ERR_OK) {
		*b = save;
		return (err);
	}

	if ((err = FUNC6(b, &binding->var)) != ASN_ERR_OK) {
		*b = save;
		return (err);
	}

	switch (binding->syntax) {

	  case SNMP_SYNTAX_NULL:
		err = FUNC5(b);
		break;

	  case SNMP_SYNTAX_INTEGER:
		err = FUNC3(b, binding->v.integer);
		break;

	  case SNMP_SYNTAX_OCTETSTRING:
		err = FUNC7(b, binding->v.octetstring.octets,
		    binding->v.octetstring.len);
		break;

	  case SNMP_SYNTAX_OID:
		err = FUNC6(b, &binding->v.oid);
		break;

	  case SNMP_SYNTAX_IPADDRESS:
		err = FUNC4(b, binding->v.ipaddress);
		break;

	  case SNMP_SYNTAX_TIMETICKS:
		err = FUNC9(b, ASN_APP_TIMETICKS, binding->v.uint32);
		break;

	  case SNMP_SYNTAX_COUNTER:
		err = FUNC9(b, ASN_APP_COUNTER, binding->v.uint32);
		break;

	  case SNMP_SYNTAX_GAUGE:
		err = FUNC9(b, ASN_APP_GAUGE, binding->v.uint32);
		break;

	  case SNMP_SYNTAX_COUNTER64:
		err = FUNC1(b, binding->v.counter64);
		break;

	  case SNMP_SYNTAX_NOSUCHOBJECT:
		err = FUNC2(b, ASN_EXCEPT_NOSUCHOBJECT);
		break;

	  case SNMP_SYNTAX_NOSUCHINSTANCE:
		err = FUNC2(b, ASN_EXCEPT_NOSUCHINSTANCE);
		break;

	  case SNMP_SYNTAX_ENDOFMIBVIEW:
		err = FUNC2(b, ASN_EXCEPT_ENDOFMIBVIEW);
		break;
	}

	if (err != ASN_ERR_OK) {
		*b = save;
		return (err);
	}

	err = FUNC0(b, ptr, NULL);
	if (err != ASN_ERR_OK) {
		*b = save;
		return (err);
	}

	return (ASN_ERR_OK);
}
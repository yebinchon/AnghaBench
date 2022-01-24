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
struct snmp_value {int /*<<< orphan*/  syntax; } ;
struct snmp_node {int /*<<< orphan*/  syntax; } ;
struct asn_oid {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
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
 char TOK_EOF ; 
 char TOK_EOL ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct snmp_node const*,struct asn_oid*,struct snmp_value*) ; 
 scalar_t__ ignore ; 
 struct snmp_node* FUNC6 (char const*,struct asn_oid*) ; 
 int /*<<< orphan*/  FUNC7 (struct snmp_value*) ; 
 int /*<<< orphan*/  FUNC8 (struct snmp_value*) ; 
 int /*<<< orphan*/  FUNC9 (struct snmp_value*) ; 
 int /*<<< orphan*/  FUNC10 (struct snmp_value*) ; 
 int /*<<< orphan*/  FUNC11 (struct snmp_value*) ; 
 int /*<<< orphan*/  FUNC12 (struct snmp_value*) ; 
 int /*<<< orphan*/  FUNC13 (struct snmp_value*) ; 
 int /*<<< orphan*/  FUNC14 (char*,...) ; 
 int /*<<< orphan*/  FUNC15 (struct snmp_value*) ; 
 char token ; 

__attribute__((used)) static void
FUNC16(const char *varname)
{
	struct snmp_value value;
	struct asn_oid vindex;
	const struct snmp_node *node;

	node = FUNC6(varname, &vindex);
	if (token != '=')
		FUNC14("'=' expected, got '%c'", token);
	FUNC4();

	if (ignore) {
		/* skip rest of line */
		while (token != TOK_EOL && token != TOK_EOF)
			FUNC4();
		return;
	}
	if (node == NULL)
		FUNC14("unknown variable");

	switch (value.syntax = node->syntax) {

	  case SNMP_SYNTAX_NULL:
		FUNC10(&value);
		break;

	  case SNMP_SYNTAX_INTEGER:
		FUNC8(&value);
		break;

	  case SNMP_SYNTAX_COUNTER64:
		FUNC7(&value);
		break;

	  case SNMP_SYNTAX_OCTETSTRING:
		FUNC11(&value);
		break;

	  case SNMP_SYNTAX_OID:
		FUNC12(&value);
		break;

	  case SNMP_SYNTAX_IPADDRESS:
		FUNC9(&value);
		break;

	  case SNMP_SYNTAX_COUNTER:
	  case SNMP_SYNTAX_GAUGE:
	  case SNMP_SYNTAX_TIMETICKS:
		FUNC13(&value);
		break;

	  case SNMP_SYNTAX_NOSUCHOBJECT:
	  case SNMP_SYNTAX_NOSUCHINSTANCE:
	  case SNMP_SYNTAX_ENDOFMIBVIEW:
		FUNC3();
	}

	if (FUNC2()) {
		FUNC15(&value);
		FUNC0();
	}

	FUNC5(node, &vindex, &value);

	FUNC1();
}
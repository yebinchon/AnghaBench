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
typedef  scalar_t__ u_long ;
typedef  int u_char ;
struct TYPE_3__ {scalar_t__ len; int* octets; } ;
struct TYPE_4__ {TYPE_1__ octetstring; } ;
struct snmp_value {TYPE_2__ v; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ TOK_NUM ; 
 scalar_t__ TOK_STR ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 
 char FUNC4 () ; 
 int* FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int*,int /*<<< orphan*/ ,scalar_t__) ; 
 int numval ; 
 int* FUNC7 (int*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  strval ; 
 scalar_t__ strvallen ; 
 scalar_t__ token ; 

__attribute__((used)) static void
FUNC9(struct snmp_value *value)
{
	u_long alloc;
	u_char *noct;

	if (token == TOK_STR) {
		value->v.octetstring.len = strvallen;
		value->v.octetstring.octets = FUNC5(strvallen);
		(void)FUNC6(value->v.octetstring.octets, strval, strvallen);
		FUNC4();
		return;
	}

	/* XX:XX:XX syntax */
	value->v.octetstring.octets = NULL;
	value->v.octetstring.len = 0;

	if (token != TOK_NUM)
		/* empty string is allowed */
		return;

	if (FUNC2()) {
		FUNC3(value->v.octetstring.octets);
		FUNC0();
	}

	alloc = 0;
	for (;;) {
		if (token != TOK_NUM)
			FUNC8("bad OCTETSTRING syntax");
		if (numval > 0xff)
			FUNC8("byte value too large");
		if (alloc == value->v.octetstring.len) {
			alloc += 100;
			noct = FUNC7(value->v.octetstring.octets, alloc);
			if (noct == NULL)
				FUNC8("%m");
			value->v.octetstring.octets = noct;
		}
		value->v.octetstring.octets[value->v.octetstring.len++]
		    = numval;
		if (FUNC4() != ':')
			break;
		FUNC4();
	}
	FUNC1();
}
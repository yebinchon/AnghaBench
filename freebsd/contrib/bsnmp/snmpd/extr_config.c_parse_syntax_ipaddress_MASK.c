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
typedef  int u_char ;
struct TYPE_2__ {int* ipaddress; } ;
struct snmp_value {TYPE_1__ v; } ;

/* Variables and functions */
 scalar_t__ TOK_HOST ; 
 scalar_t__ TOK_NUM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int*) ; 
 char FUNC1 () ; 
 int numval ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  strval ; 
 scalar_t__ token ; 

__attribute__((used)) static void
FUNC3(struct snmp_value *value)
{
	int i;
	u_char ip[4];

	if (token == TOK_NUM) {
		/* numerical address */
		i = 0;
		for (;;) {
			if (numval >= 256)
				FUNC2("ip address part too large");
			value->v.ipaddress[i++] = numval;
			if (i == 4)
				break;
			if (FUNC1() != '.')
				FUNC2("expecting '.' in ip address");
		}
		FUNC1();

	} else if (token == TOK_HOST) {
		/* host name */
		FUNC0(strval, ip);
		for (i = 0; i < 4; i++)
			value->v.ipaddress[i] = ip[i];
		FUNC1();

	} else
		FUNC2("bad ip address syntax");
}
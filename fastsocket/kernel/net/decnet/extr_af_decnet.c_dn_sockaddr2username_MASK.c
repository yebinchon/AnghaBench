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
struct sockaddr_dn {int /*<<< orphan*/  sdn_objnamel; int /*<<< orphan*/  sdn_objname; int /*<<< orphan*/  sdn_objnum; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int /*<<< orphan*/ ,int) ; 

int FUNC3(struct sockaddr_dn *sdn, unsigned char *buf, unsigned char type)
{
	int len = 2;

	*buf++ = type;

	switch(type) {
		case 0:
			*buf++ = sdn->sdn_objnum;
			break;
		case 1:
			*buf++ = 0;
			*buf++ = FUNC0(sdn->sdn_objnamel);
			FUNC1(buf, sdn->sdn_objname, FUNC0(sdn->sdn_objnamel));
			len = 3 + FUNC0(sdn->sdn_objnamel);
			break;
		case 2:
			FUNC2(buf, 0, 5);
			buf += 5;
			*buf++ = FUNC0(sdn->sdn_objnamel);
			FUNC1(buf, sdn->sdn_objname, FUNC0(sdn->sdn_objnamel));
			len = 7 + FUNC0(sdn->sdn_objnamel);
			break;
	}

	return len;
}
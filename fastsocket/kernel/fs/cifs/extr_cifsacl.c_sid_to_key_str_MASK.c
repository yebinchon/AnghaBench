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
struct cifs_sid {int num_subauth; char* authority; int /*<<< orphan*/ * sub_auth; int /*<<< orphan*/  revision; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int NUM_AUTHS ; 
 unsigned int SIDOWNER ; 
 scalar_t__ SID_STRING_BASE_SIZE ; 
 int SID_STRING_SUBAUTH_SIZE ; 
 char* FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (char*,char*,unsigned int,...) ; 

__attribute__((used)) static char *
FUNC3(struct cifs_sid *sidptr, unsigned int type)
{
	int i, len;
	unsigned int saval;
	char *sidstr, *strptr;

	/* 3 bytes for prefix */
	sidstr = FUNC0(3 + SID_STRING_BASE_SIZE +
			 (SID_STRING_SUBAUTH_SIZE * sidptr->num_subauth),
			 GFP_KERNEL);
	if (!sidstr)
		return sidstr;

	strptr = sidstr;
	len = FUNC2(strptr, "%cs:S-%hhu", type == SIDOWNER ? 'o' : 'g',
			sidptr->revision);
	strptr += len;

	for (i = 0; i < NUM_AUTHS; ++i) {
		if (sidptr->authority[i]) {
			len = FUNC2(strptr, "-%hhu", sidptr->authority[i]);
			strptr += len;
		}
	}

	for (i = 0; i < sidptr->num_subauth; ++i) {
		saval = FUNC1(sidptr->sub_auth[i]);
		len = FUNC2(strptr, "-%u", saval);
		strptr += len;
	}

	return sidstr;
}
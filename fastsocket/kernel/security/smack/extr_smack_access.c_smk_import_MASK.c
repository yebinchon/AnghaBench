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
struct smack_known {char* smk_known; } ;

/* Variables and functions */
 struct smack_known* FUNC0 (char const*,int) ; 

char *FUNC1(const char *string, int len)
{
	struct smack_known *skp;

	/* labels cannot begin with a '-' */
	if (string[0] == '-')
		return NULL;
	skp = FUNC0(string, len);
	if (skp == NULL)
		return NULL;
	return skp->smk_known;
}
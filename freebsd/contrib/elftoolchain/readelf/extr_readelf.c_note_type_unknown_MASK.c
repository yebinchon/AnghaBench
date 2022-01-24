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
typedef  int /*<<< orphan*/  s_nt ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,char*,unsigned int) ; 

__attribute__((used)) static const char *
FUNC1(unsigned int nt)
{
	static char s_nt[32];

	FUNC0(s_nt, sizeof(s_nt),
	    nt >= 0x100 ? "<unknown: 0x%x>" : "<unknown: %u>", nt);
	return (s_nt);
}
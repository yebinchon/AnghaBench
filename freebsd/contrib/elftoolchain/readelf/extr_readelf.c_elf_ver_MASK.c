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
typedef  int /*<<< orphan*/  s_ver ;

/* Variables and functions */
#define  EV_CURRENT 129 
#define  EV_NONE 128 
 int /*<<< orphan*/  FUNC0 (char*,int,char*,unsigned int) ; 

__attribute__((used)) static const char *
FUNC1(unsigned int ver)
{
	static char s_ver[32];

	switch (ver) {
	case EV_CURRENT: return "(current)";
	case EV_NONE: return "(none)";
	default:
		FUNC0(s_ver, sizeof(s_ver), "<unknown: %#x>",
		    ver);
		return (s_ver);
	}
}
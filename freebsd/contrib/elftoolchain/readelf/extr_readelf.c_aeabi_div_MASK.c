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
typedef  int /*<<< orphan*/  uintmax_t ;
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  s_du ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static const char *
FUNC1(uint64_t du)
{
	static char s_du[32];

	switch (du) {
	case 0: return "Yes (V7-R/V7-M)";
	case 1: return "No";
	case 2: return "Yes (V7-A)";
	default:
		FUNC0(s_du, sizeof(s_du), "Unknown (%ju)",
		    (uintmax_t) du);
		return (s_du);
	}
}
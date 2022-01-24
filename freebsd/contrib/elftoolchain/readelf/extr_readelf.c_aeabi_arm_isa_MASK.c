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
typedef  int /*<<< orphan*/  s_ai ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static const char *
FUNC1(uint64_t ai)
{
	static char s_ai[32];

	switch (ai) {
	case 0: return "No";
	case 1: return "Yes";
	default:
		FUNC0(s_ai, sizeof(s_ai), "Unknown (%ju)\n",
		    (uintmax_t) ai);
		return (s_ai);
	}
}
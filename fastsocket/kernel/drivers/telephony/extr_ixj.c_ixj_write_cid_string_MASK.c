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
typedef  int /*<<< orphan*/  IXJ ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char) ; 
 int FUNC1 (char*) ; 

__attribute__((used)) static int FUNC2(IXJ *j, char *s, int checksum)
{
	int cnt;

	for (cnt = 0; cnt < FUNC1(s); cnt++) {
		FUNC0(j, s[cnt]);
		checksum = (checksum + s[cnt]);
	}
	return checksum;
}
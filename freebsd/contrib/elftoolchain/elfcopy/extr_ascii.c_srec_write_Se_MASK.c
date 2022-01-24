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
typedef  int uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static void
FUNC2(int ofd, uint64_t e_entry, int forceS3)
{
	char er;

	if (e_entry > 0xFFFFFFFF) {
		FUNC1("address space too big for S-Record file");
		return;
	}

	if (forceS3)
		er = '7';
	else {
		if (e_entry <= 0xFFFF)
			er = '9';
		else if (e_entry <= 0xFFFFFF)
			er = '8';
		else
			er = '7';
	}

	FUNC0(ofd, er, e_entry, NULL, 0);
}
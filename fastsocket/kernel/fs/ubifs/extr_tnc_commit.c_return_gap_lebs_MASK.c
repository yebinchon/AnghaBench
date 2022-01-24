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
struct ubifs_info {int* gap_lebs; } ;

/* Variables and functions */
 int /*<<< orphan*/  LPROPS_NC ; 
 int /*<<< orphan*/  LPROPS_TAKEN ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int FUNC2 (struct ubifs_info*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct ubifs_info *c)
{
	int *p, err;

	if (!c->gap_lebs)
		return 0;

	FUNC0("");
	for (p = c->gap_lebs; *p != -1; p++) {
		err = FUNC2(c, *p, LPROPS_NC, LPROPS_NC, 0,
					  LPROPS_TAKEN, 0);
		if (err)
			return err;
	}

	FUNC1(c->gap_lebs);
	c->gap_lebs = NULL;
	return 0;
}
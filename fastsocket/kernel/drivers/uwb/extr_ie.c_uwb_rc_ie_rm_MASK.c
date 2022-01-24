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
struct uwb_rc {int beaconing; int /*<<< orphan*/  ies_mutex; int /*<<< orphan*/  ies; } ;
typedef  enum uwb_ie { ____Placeholder_uwb_ie } uwb_ie ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct uwb_rc*,int) ; 
 int FUNC3 (struct uwb_rc*,int /*<<< orphan*/ ) ; 

int FUNC4(struct uwb_rc *uwb_rc, enum uwb_ie element_id)
{
	int result = 0;

	FUNC0(&uwb_rc->ies_mutex);

	FUNC2(uwb_rc, element_id);

	if (uwb_rc->beaconing != -1)
		result = FUNC3(uwb_rc, uwb_rc->ies);

	FUNC1(&uwb_rc->ies_mutex);

	return result;
}
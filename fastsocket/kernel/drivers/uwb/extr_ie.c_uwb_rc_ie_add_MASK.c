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
struct uwb_ie_hdr {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct uwb_ie_hdr* FUNC2 (void**,size_t*) ; 
 int FUNC3 (struct uwb_rc*,struct uwb_ie_hdr const*) ; 
 int FUNC4 (struct uwb_rc*,int /*<<< orphan*/ ) ; 

int FUNC5(struct uwb_rc *uwb_rc,
		  const struct uwb_ie_hdr *ies, size_t size)
{
	int result = 0;
	void *ptr;
	const struct uwb_ie_hdr *ie;

	FUNC0(&uwb_rc->ies_mutex);

	ptr = (void *)ies;
	for (;;) {
		ie = FUNC2(&ptr, &size);
		if (!ie)
			break;

		result = FUNC3(uwb_rc, ie);
		if (result < 0)
			break;
	}
	if (result >= 0) {
		if (size == 0) {
			if (uwb_rc->beaconing != -1)
				result = FUNC4(uwb_rc, uwb_rc->ies);
		} else
			result = -EINVAL;
	}

	FUNC1(&uwb_rc->ies_mutex);

	return result;
}
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
struct char_device_struct {unsigned int major; unsigned int baseminor; int minorct; struct char_device_struct* next; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int FUNC0 (struct char_device_struct**) ; 
 int EBUSY ; 
 int ENOMEM ; 
 struct char_device_struct* FUNC1 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct char_device_struct** chrdevs ; 
 int /*<<< orphan*/  chrdevs_lock ; 
 int /*<<< orphan*/  FUNC2 (struct char_device_struct*) ; 
 struct char_device_struct* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char const*,int) ; 

__attribute__((used)) static struct char_device_struct *
FUNC8(unsigned int major, unsigned int baseminor,
			   int minorct, const char *name)
{
	struct char_device_struct *cd, **cp;
	int ret = 0;
	int i;

	cd = FUNC3(sizeof(struct char_device_struct), GFP_KERNEL);
	if (cd == NULL)
		return FUNC1(-ENOMEM);

	FUNC5(&chrdevs_lock);

	/* temporary */
	if (major == 0) {
		for (i = FUNC0(chrdevs)-1; i > 0; i--) {
			if (chrdevs[i] == NULL)
				break;
		}

		if (i == 0) {
			ret = -EBUSY;
			goto out;
		}
		major = i;
		ret = major;
	}

	cd->major = major;
	cd->baseminor = baseminor;
	cd->minorct = minorct;
	FUNC7(cd->name, name, sizeof(cd->name));

	i = FUNC4(major);

	for (cp = &chrdevs[i]; *cp; cp = &(*cp)->next)
		if ((*cp)->major > major ||
		    ((*cp)->major == major &&
		     (((*cp)->baseminor >= baseminor) ||
		      ((*cp)->baseminor + (*cp)->minorct > baseminor))))
			break;

	/* Check for overlapping minor ranges.  */
	if (*cp && (*cp)->major == major) {
		int old_min = (*cp)->baseminor;
		int old_max = (*cp)->baseminor + (*cp)->minorct - 1;
		int new_min = baseminor;
		int new_max = baseminor + minorct - 1;

		/* New driver overlaps from the left.  */
		if (new_max >= old_min && new_max <= old_max) {
			ret = -EBUSY;
			goto out;
		}

		/* New driver overlaps from the right.  */
		if (new_min <= old_max && new_min >= old_min) {
			ret = -EBUSY;
			goto out;
		}
	}

	cd->next = *cp;
	*cp = cd;
	FUNC6(&chrdevs_lock);
	return cd;
out:
	FUNC6(&chrdevs_lock);
	FUNC2(cd);
	return FUNC1(ret);
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct tomoyo_profile {int /*<<< orphan*/ * value; } ;
struct TYPE_2__ {int /*<<< orphan*/  current_value; } ;
typedef  int /*<<< orphan*/  DEFINE_MUTEX ;

/* Variables and functions */
 int TOMOYO_MAX_CONTROL_INDEX ; 
 unsigned int const TOMOYO_MAX_PROFILES ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct tomoyo_profile* FUNC3 (int) ; 
 TYPE_1__* tomoyo_control_array ; 
 struct tomoyo_profile** tomoyo_profile_ptr ; 

__attribute__((used)) static struct tomoyo_profile *FUNC4(const unsigned
								int profile)
{
	static DEFINE_MUTEX(lock);
	struct tomoyo_profile *ptr = NULL;
	int i;

	if (profile >= TOMOYO_MAX_PROFILES)
		return NULL;
	FUNC1(&lock);
	ptr = tomoyo_profile_ptr[profile];
	if (ptr)
		goto ok;
	ptr = FUNC3(sizeof(*ptr));
	if (!ptr)
		goto ok;
	for (i = 0; i < TOMOYO_MAX_CONTROL_INDEX; i++)
		ptr->value[i] = tomoyo_control_array[i].current_value;
	FUNC0(); /* Avoid out-of-order execution. */
	tomoyo_profile_ptr[profile] = ptr;
 ok:
	FUNC2(&lock);
	return ptr;
}
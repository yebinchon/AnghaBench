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
typedef  scalar_t__ uint_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  uu_error_key ; 
 int uu_error_key_setup ; 
 int /*<<< orphan*/  uu_key_lock ; 

void
FUNC5(uint_t code)
{

#if defined(PTHREAD_ONCE_KEY_NP)
	if (pthread_key_create_once_np(&uu_error_key, NULL) != 0)
		uu_error_key_setup = -1;
	else
		uu_error_key_setup = 1;
#else	/* PTHREAD_ONCE_KEY_NP */
	if (uu_error_key_setup == 0) {
		(void) FUNC2(&uu_key_lock);
		if (uu_error_key_setup == 0) {
			if (FUNC0(&uu_error_key, NULL) != 0)
				uu_error_key_setup = -1;
			else
				uu_error_key_setup = 1;
		}
		(void) FUNC3(&uu_key_lock);
	}
#endif	/* PTHREAD_ONCE_KEY_NP */
	if (uu_error_key_setup > 0)
		(void) FUNC4(uu_error_key,
		    (void *)(uintptr_t)code);
}
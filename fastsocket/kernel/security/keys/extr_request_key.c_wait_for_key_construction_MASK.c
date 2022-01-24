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
struct TYPE_2__ {scalar_t__* x; } ;
struct key {TYPE_1__ type_data; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  KEY_FLAG_NEGATIVE ; 
 int /*<<< orphan*/  KEY_FLAG_USER_CONSTRUCT ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int FUNC0 (struct key*) ; 
 int /*<<< orphan*/  key_wait_bit ; 
 int /*<<< orphan*/  key_wait_bit_intr ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC4(struct key *key, bool intr)
{
	int ret;

	ret = FUNC3(&key->flags, KEY_FLAG_USER_CONSTRUCT,
			  intr ? key_wait_bit_intr : key_wait_bit,
			  intr ? TASK_INTERRUPTIBLE : TASK_UNINTERRUPTIBLE);
	if (ret < 0)
		return ret;
	if (FUNC2(KEY_FLAG_NEGATIVE, &key->flags)) {
		FUNC1();
		return (long)key->type_data.x[0];
	}
	return FUNC0(key);
}
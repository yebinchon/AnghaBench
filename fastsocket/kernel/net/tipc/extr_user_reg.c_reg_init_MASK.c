#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u32 ;
struct TYPE_3__ {size_t next; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 size_t MAX_USERID ; 
 int /*<<< orphan*/  USER_LIST_SIZE ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t next_free_user ; 
 int /*<<< orphan*/  reg_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* users ; 

__attribute__((used)) static int FUNC3(void)
{
	u32 i;

	FUNC1(&reg_lock);
	if (!users) {
		users = FUNC0(USER_LIST_SIZE, GFP_ATOMIC);
		if (users) {
			for (i = 1; i <= MAX_USERID; i++) {
				users[i].next = i - 1;
			}
			next_free_user = MAX_USERID;
		}
	}
	FUNC2(&reg_lock);
	return users ? 0 : -ENOMEM;
}
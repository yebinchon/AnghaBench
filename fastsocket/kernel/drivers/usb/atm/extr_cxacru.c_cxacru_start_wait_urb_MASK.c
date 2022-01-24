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
struct urb {int actual_length; int status; } ;
struct timer_list {unsigned long data; int /*<<< orphan*/  function; scalar_t__ expires; } ;
struct completion {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (struct timer_list*) ; 
 int /*<<< orphan*/  cxacru_timeout_kill ; 
 int /*<<< orphan*/  FUNC1 (struct timer_list*) ; 
 int /*<<< orphan*/  FUNC2 (struct timer_list*) ; 
 scalar_t__ jiffies ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct completion*) ; 

__attribute__((used)) static int FUNC5(struct urb *urb, struct completion *done,
				 int* actual_length)
{
	struct timer_list timer;

	FUNC2(&timer);
	timer.expires = jiffies + FUNC3(CMD_TIMEOUT);
	timer.data = (unsigned long) urb;
	timer.function = cxacru_timeout_kill;
	FUNC0(&timer);
	FUNC4(done);
	FUNC1(&timer);

	if (actual_length)
		*actual_length = urb->actual_length;
	return urb->status; /* must read status after completion */
}
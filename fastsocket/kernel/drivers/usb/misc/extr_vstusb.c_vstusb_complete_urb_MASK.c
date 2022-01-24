#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct urb {int status; int actual_length; int /*<<< orphan*/  transfer_buffer_length; int /*<<< orphan*/  pipe; TYPE_1__* dev; } ;
struct completion {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  comm; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ECONNRESET ; 
 int EINTR ; 
 int ENOENT ; 
 int ESHUTDOWN ; 
 int ETIMEDOUT ; 
 unsigned long MAX_SCHEDULE_TIMEOUT ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int) ; 
 unsigned long FUNC1 (int) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (struct urb*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct completion*,unsigned long) ; 

__attribute__((used)) static int FUNC7(struct urb *urb, struct completion *done,
			       int timeout, int *actual_length)
{
	unsigned long expire;
	int status;

	expire = timeout ? FUNC1(timeout) : MAX_SCHEDULE_TIMEOUT;
	if (!FUNC6(done, expire)) {
		FUNC3(urb);
		status = urb->status == -ENOENT ? -ETIMEDOUT : urb->status;

		FUNC0(&urb->dev->dev,
			"%s timed out on ep%d%s len=%d/%d, urb status = %d\n",
			current->comm,
			FUNC4(urb->pipe),
			FUNC5(urb->pipe) ? "in" : "out",
			urb->actual_length,
			urb->transfer_buffer_length,
			urb->status);

	} else {
		if (FUNC2(current)) {
			/* if really an error */
			if (urb->status && !((urb->status == -ENOENT)     ||
					     (urb->status == -ECONNRESET) ||
					     (urb->status == -ESHUTDOWN))) {
				status = -EINTR;
				FUNC3(urb);
			} else {
				status = 0;
			}

			FUNC0(&urb->dev->dev,
				"%s: signal pending on ep%d%s len=%d/%d,"
				"urb status = %d\n",
				current->comm,
				FUNC4(urb->pipe),
				FUNC5(urb->pipe) ? "in" : "out",
				urb->actual_length,
				urb->transfer_buffer_length,
				urb->status);

		} else {
			status = urb->status;
		}
	}

	if (actual_length)
		*actual_length = urb->actual_length;

	return status;
}
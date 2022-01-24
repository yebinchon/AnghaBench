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
struct c67x00_hcd {scalar_t__ current_frame; scalar_t__ last_frame; int /*<<< orphan*/  lock; int /*<<< orphan*/  td_list; int /*<<< orphan*/  sie; int /*<<< orphan*/  urb_count; int /*<<< orphan*/  endpoint_disable; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct c67x00_hcd*) ; 
 int /*<<< orphan*/  FUNC1 (struct c67x00_hcd*) ; 
 int /*<<< orphan*/  FUNC2 (struct c67x00_hcd*) ; 
 scalar_t__ FUNC3 (struct c67x00_hcd*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct c67x00_hcd*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct c67x00_hcd *c67x00)
{
	FUNC8(&c67x00->lock);
	/* Make sure all tds are processed */
	if (!FUNC0(c67x00))
		goto out;

	FUNC1(c67x00);

	/* no td's are being processed (current == 0)
	 * and all have been "checked" */
	FUNC6(&c67x00->endpoint_disable);

	if (!FUNC7(&c67x00->td_list))
		goto out;

	c67x00->current_frame = FUNC3(c67x00);
	if (c67x00->current_frame == c67x00->last_frame)
		goto out;	/* Don't send tds in same frame */
	c67x00->last_frame = c67x00->current_frame;

	/* If no urbs are scheduled, our work is done */
	if (!c67x00->urb_count) {
		FUNC4(c67x00->sie);
		goto out;
	}

	FUNC2(c67x00);
	if (!FUNC7(&c67x00->td_list))
		/* TD's have been added to the frame */
		FUNC5(c67x00);

 out:
	FUNC9(&c67x00->lock);
}
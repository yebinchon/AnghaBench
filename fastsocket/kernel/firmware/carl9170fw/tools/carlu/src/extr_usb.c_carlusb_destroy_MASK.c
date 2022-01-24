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
struct carlu {int stop_event_polling; int /*<<< orphan*/  dev_list; int /*<<< orphan*/  event_thread; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct carlu*) ; 
 int /*<<< orphan*/  FUNC2 (struct carlu*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct carlu *ar)
{
	int event_thread_status;

	FUNC3("==>release device.\n");

	ar->stop_event_polling = true;

	FUNC1(ar);

	FUNC0(ar->event_thread, &event_thread_status);

	FUNC2(ar);
	FUNC4(&ar->dev_list);
}
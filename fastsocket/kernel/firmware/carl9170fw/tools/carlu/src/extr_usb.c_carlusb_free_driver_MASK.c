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
struct carlu {int* event_pipe; int /*<<< orphan*/ * dev; int /*<<< orphan*/ * fw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct carlu*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct carlu*) ; 
 int /*<<< orphan*/  FUNC3 (struct carlu*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct carlu *ar)
{
	if (!FUNC0(ar)) {
		if (ar->event_pipe[0] > -1)
			FUNC4(ar->event_pipe[0]);

		if (ar->event_pipe[1] > -1)
			FUNC4(ar->event_pipe[1]);

		FUNC3(ar);
		FUNC1(ar->fw);
		ar->fw = NULL;

		if (ar->dev) {
			FUNC6(ar->dev, 0);
			FUNC5(ar->dev);
			ar->dev = NULL;
		}
		FUNC2(ar);
	}
}
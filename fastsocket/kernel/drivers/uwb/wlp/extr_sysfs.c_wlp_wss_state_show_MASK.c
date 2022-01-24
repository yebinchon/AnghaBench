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
struct wlp_wss {int /*<<< orphan*/  mutex; int /*<<< orphan*/  state; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC4(struct wlp_wss *wss, char *buf)
{
	int result = 0;

	if (FUNC0(&wss->mutex))
		goto out;
	result = FUNC2(buf, PAGE_SIZE, "%s\n",
			   FUNC3(wss->state));
	FUNC1(&wss->mutex);
out:
	return result;
}
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
struct wlp_wss {int /*<<< orphan*/  mutex; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC0 (struct wlp_wss*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC3(struct wlp_wss *wss, char *buf)
{
	int result = 0;

	if (FUNC1(&wss->mutex))
		goto out;
	result = FUNC0(wss, buf, PAGE_SIZE);
	FUNC2(&wss->mutex);
out:
	return result;
}
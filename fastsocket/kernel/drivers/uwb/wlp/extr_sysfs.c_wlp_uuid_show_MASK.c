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
struct wlp {int /*<<< orphan*/  mutex; int /*<<< orphan*/  uuid; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

ssize_t FUNC3(struct wlp *wlp, char *buf)
{
	ssize_t result = 0;

	FUNC0(&wlp->mutex);
	result = FUNC2(buf, PAGE_SIZE, &wlp->uuid);
	buf[result++] = '\n';
	FUNC1(&wlp->mutex);
	return result;
}
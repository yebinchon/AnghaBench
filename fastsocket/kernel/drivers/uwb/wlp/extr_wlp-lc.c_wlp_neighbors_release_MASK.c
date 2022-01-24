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
struct wlp {int /*<<< orphan*/  nbmutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wlp*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static
void FUNC3(struct wlp *wlp)
{
	FUNC1(&wlp->nbmutex);
	FUNC0(wlp);
	FUNC2(&wlp->nbmutex);
}
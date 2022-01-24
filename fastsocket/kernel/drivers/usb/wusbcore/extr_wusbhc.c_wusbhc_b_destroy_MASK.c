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
struct wusbhc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wusbhc_attr_group ; 
 int /*<<< orphan*/  FUNC1 (struct wusbhc*) ; 
 int /*<<< orphan*/  FUNC2 (struct wusbhc*) ; 

void FUNC3(struct wusbhc *wusbhc)
{
	FUNC2(wusbhc);
	FUNC0(FUNC1(wusbhc), &wusbhc_attr_group);
}
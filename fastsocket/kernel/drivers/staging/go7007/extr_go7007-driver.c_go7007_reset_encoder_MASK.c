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
struct go7007 {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct go7007*) ; 
 scalar_t__ FUNC1 (struct go7007*) ; 

int FUNC2(struct go7007 *go)
{
	if (FUNC1(go) < 0)
		return -1;
	return FUNC0(go);
}
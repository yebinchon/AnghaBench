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
typedef  int /*<<< orphan*/  ARCHD ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * grptb ; 
 int /*<<< orphan*/ * trhead ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * usrtb ; 

int
FUNC3(ARCHD *arcn)
{
	if (((usrtb != NULL) && FUNC2(arcn)) ||
	    ((grptb != NULL) && FUNC0(arcn)) ||
	    ((trhead != NULL) && FUNC1(arcn)))
		return(1);
	return(0);
}
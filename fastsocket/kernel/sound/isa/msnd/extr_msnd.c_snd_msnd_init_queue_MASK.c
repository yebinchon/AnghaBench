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

/* Variables and functions */
 int JQS_wHead ; 
 int JQS_wSize ; 
 int JQS_wStart ; 
 int JQS_wTail ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,void*) ; 

void FUNC3(void *base, int start, int size)
{
	FUNC2(FUNC0(start), base + JQS_wStart);
	FUNC2(FUNC1(size) - 1, base + JQS_wSize);
	FUNC2(0, base + JQS_wHead);
	FUNC2(0, base + JQS_wTail);
}
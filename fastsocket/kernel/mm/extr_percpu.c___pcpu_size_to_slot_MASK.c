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
 int PCPU_SLOT_BASE_SHIFT ; 
 int FUNC0 (int) ; 
 int FUNC1 (int,int) ; 

__attribute__((used)) static int FUNC2(int size)
{
	int highbit = FUNC0(size);	/* size is in bytes */
	return FUNC1(highbit - PCPU_SLOT_BASE_SHIFT + 2, 1);
}
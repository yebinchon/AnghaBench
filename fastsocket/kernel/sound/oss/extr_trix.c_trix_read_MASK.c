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
 unsigned char FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char,int) ; 

__attribute__((used)) static unsigned char FUNC2(int addr)
{
	FUNC1(((unsigned char) addr), 0x390);	/* MT-0002-PC ASIC address */
	return FUNC0(0x391);	/* MT-0002-PC ASIC data */
}
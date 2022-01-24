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
struct platform_device {int dummy; } ;

/* Variables and functions */
 int PCI_BASE ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void FUNC2(struct platform_device *dev)
{
	/*
	 * Set register CLK48CTL to enable and 48MHz
	 */
	FUNC0(0x00000003, PCI_BASE | 0x0004770c);

	/*
	 * Set register CLK12CTL to enable and 48MHz
	 */
	FUNC0(0x00000003, PCI_BASE | 0x00047710);

	FUNC1(100);
}
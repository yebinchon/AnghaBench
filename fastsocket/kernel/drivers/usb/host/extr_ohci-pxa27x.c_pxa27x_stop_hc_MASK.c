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
typedef  int uint32_t ;
struct pxaohci_platform_data {int /*<<< orphan*/  (* exit ) (struct device*) ;} ;
struct pxa27x_ohci {int /*<<< orphan*/  clk; scalar_t__ mmio_base; } ;
struct device {struct pxaohci_platform_data* platform_data; } ;

/* Variables and functions */
 scalar_t__ UHCCOMS ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pxa27x_ohci*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(struct pxa27x_ohci *ohci, struct device *dev)
{
	struct pxaohci_platform_data *inf;
	uint32_t uhccoms;

	inf = dev->platform_data;

	if (inf->exit)
		inf->exit(dev);

	FUNC3(ohci);

	/* Host Controller Reset */
	uhccoms = FUNC0(ohci->mmio_base + UHCCOMS) | 0x01;
	FUNC1(uhccoms, ohci->mmio_base + UHCCOMS);
	FUNC5(10);

	FUNC2(ohci->clk);
}
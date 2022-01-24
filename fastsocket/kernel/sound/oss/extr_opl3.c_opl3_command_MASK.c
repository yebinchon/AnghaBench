#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int model; } ;

/* Variables and functions */
 TYPE_1__* devc ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void FUNC3    (int io_addr, unsigned int addr, unsigned int val)
{
	 int i;

	/*
	 * The original 2-OP synth requires a quite long delay after writing to a
	 * register. The OPL-3 survives with just two INBs
	 */

	FUNC1(((unsigned char) (addr & 0xff)), io_addr);

	if (devc->model != 2)
		FUNC2(10);
	else
		for (i = 0; i < 2; i++)
			FUNC0(io_addr);

	FUNC1(((unsigned char) (val & 0xff)), io_addr + 1);

	if (devc->model != 2)
		FUNC2(30);
	else
		for (i = 0; i < 2; i++)
			FUNC0(io_addr);
}
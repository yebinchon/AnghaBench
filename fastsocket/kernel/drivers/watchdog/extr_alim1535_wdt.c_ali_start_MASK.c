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
typedef  int u32 ;

/* Variables and functions */
 int /*<<< orphan*/  ali_lock ; 
 int /*<<< orphan*/  ali_pci ; 
 int ali_timeout_bits ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(void)
{
	u32 val;

	FUNC2(&ali_lock);

	FUNC0(ali_pci, 0xCC, &val);
	val &= ~0x3F;	/* Mask count */
	val |= (1 << 25) | ali_timeout_bits;
	FUNC1(ali_pci, 0xCC, val);

	FUNC3(&ali_lock);
}
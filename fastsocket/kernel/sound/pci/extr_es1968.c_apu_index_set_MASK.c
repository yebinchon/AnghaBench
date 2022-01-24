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
typedef  scalar_t__ u16 ;
struct es1968 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IDR1_CRAM_POINTER ; 
 scalar_t__ FUNC0 (struct es1968*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct es1968*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static void FUNC3(struct es1968 *chip, u16 index)
{
	int i;
	FUNC1(chip, IDR1_CRAM_POINTER, index);
	for (i = 0; i < 1000; i++)
		if (FUNC0(chip, IDR1_CRAM_POINTER) == index)
			return;
	FUNC2("es1968: APU register select failed. (Timeout)\n");
}
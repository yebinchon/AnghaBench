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
typedef  int u8 ;
typedef  int u16 ;
struct es1968 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IDR0_DATA_PORT ; 
 int NR_APUS ; 
 int FUNC0 (struct es1968*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct es1968*,int) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static u16 FUNC3(struct es1968 *chip, u16 channel, u8 reg)
{
	if (FUNC2(channel >= NR_APUS))
		return 0;
	reg |= (channel << 4);
	FUNC1(chip, reg);
	return FUNC0(chip, IDR0_DATA_PORT);
}
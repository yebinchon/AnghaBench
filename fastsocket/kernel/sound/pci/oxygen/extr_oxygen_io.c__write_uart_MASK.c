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
typedef  int /*<<< orphan*/  u8 ;
struct oxygen {int dummy; } ;

/* Variables and functions */
 int MPU401_TX_FULL ; 
 scalar_t__ OXYGEN_MPU401 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct oxygen*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct oxygen*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct oxygen *chip, unsigned int port, u8 data)
{
	if (FUNC1(chip, OXYGEN_MPU401 + 1) & MPU401_TX_FULL)
		FUNC0(1);
	FUNC2(chip, OXYGEN_MPU401 + port, data);
}
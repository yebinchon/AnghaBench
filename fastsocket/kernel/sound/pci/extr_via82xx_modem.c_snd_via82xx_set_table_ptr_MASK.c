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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {scalar_t__ addr; } ;
struct viadev {TYPE_1__ table; } ;
struct via82xx_modem {int /*<<< orphan*/  ac97_secondary; } ;

/* Variables and functions */
 int /*<<< orphan*/  OFFSET_TABLE_PTR ; 
 int /*<<< orphan*/  FUNC0 (struct viadev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct via82xx_modem*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct via82xx_modem *chip, struct viadev *viadev)
{
	FUNC2(chip, chip->ac97_secondary);
	FUNC1((u32)viadev->table.addr, FUNC0(viadev, OFFSET_TABLE_PTR));
	FUNC3(20);
	FUNC2(chip, chip->ac97_secondary);
}
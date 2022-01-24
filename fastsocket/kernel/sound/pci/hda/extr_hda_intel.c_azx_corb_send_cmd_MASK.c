#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct hda_bus {struct azx* private_data; } ;
struct TYPE_4__ {int /*<<< orphan*/ * buf; } ;
struct TYPE_3__ {int /*<<< orphan*/ * cmds; } ;
struct azx {int /*<<< orphan*/  reg_lock; TYPE_2__ corb; TYPE_1__ rirb; } ;

/* Variables and functions */
 int /*<<< orphan*/  CORBRP ; 
 int /*<<< orphan*/  CORBWP ; 
 int EAGAIN ; 
 int EIO ; 
 unsigned int ICH6_MAX_CORB_ENTRIES ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (struct azx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct azx*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct hda_bus *bus, u32 val)
{
	struct azx *chip = bus->private_data;
	unsigned int addr = FUNC0(val);
	unsigned int wp, rp;

	FUNC4(&chip->reg_lock);

	/* add command to corb */
	wp = FUNC1(chip, CORBWP);
	if (wp == 0xffff) {
		/* something wrong, controller likely turned to D3 */
		FUNC5(&chip->reg_lock);
		return -EIO;
	}
	wp++;
	wp %= ICH6_MAX_CORB_ENTRIES;

	rp = FUNC1(chip, CORBRP);
	if (wp == rp) {
		/* oops, it's full */
		FUNC5(&chip->reg_lock);
		return -EAGAIN;
	}

	chip->rirb.cmds[addr]++;
	chip->corb.buf[wp] = FUNC3(val);
	FUNC2(chip, CORBWP, wp);

	FUNC5(&chip->reg_lock);

	return 0;
}
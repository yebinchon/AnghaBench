#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct viafb_par {TYPE_1__* shared; } ;
struct TYPE_7__ {int /*<<< orphan*/ * parent; } ;
struct TYPE_9__ {int id; int /*<<< orphan*/  name; TYPE_2__ dev; TYPE_3__* algo_data; scalar_t__ class; int /*<<< orphan*/  owner; } ;
struct TYPE_8__ {int udelay; int timeout; struct via_i2c_stuff* data; int /*<<< orphan*/  getscl; int /*<<< orphan*/  getsda; int /*<<< orphan*/  (* setscl ) (struct via_i2c_stuff*,int) ;int /*<<< orphan*/  (* setsda ) (struct via_i2c_stuff*,int) ;} ;
struct via_i2c_stuff {int i2c_port; TYPE_4__ adapter; TYPE_3__ algo; } ;
struct TYPE_6__ {struct via_i2c_stuff i2c_stuff; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int GPIOPORTINDEX ; 
 int I2CPORTINDEX ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,struct via_i2c_stuff*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  via_i2c_getscl ; 
 int /*<<< orphan*/  via_i2c_getsda ; 
 int /*<<< orphan*/  FUNC5 (struct via_i2c_stuff*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct via_i2c_stuff*,int) ; 

int FUNC7(void *viapar)
{
	int ret;
	struct via_i2c_stuff *i2c_stuff =
		&((struct viafb_par *)viapar)->shared->i2c_stuff;

	FUNC3(i2c_stuff->adapter.name, "via_i2c");
	i2c_stuff->i2c_port = 0x0;
	i2c_stuff->adapter.owner = THIS_MODULE;
	i2c_stuff->adapter.id = 0x01FFFF;
	i2c_stuff->adapter.class = 0;
	i2c_stuff->adapter.algo_data = &i2c_stuff->algo;
	i2c_stuff->adapter.dev.parent = NULL;
	i2c_stuff->algo.setsda = via_i2c_setsda;
	i2c_stuff->algo.setscl = via_i2c_setscl;
	i2c_stuff->algo.getsda = via_i2c_getsda;
	i2c_stuff->algo.getscl = via_i2c_getscl;
	i2c_stuff->algo.udelay = 40;
	i2c_stuff->algo.timeout = 20;
	i2c_stuff->algo.data = i2c_stuff;

	FUNC2(&i2c_stuff->adapter, i2c_stuff);

	/* Raise SCL and SDA */
	i2c_stuff->i2c_port = I2CPORTINDEX;
	FUNC6(i2c_stuff, 1);
	FUNC5(i2c_stuff, 1);

	i2c_stuff->i2c_port = GPIOPORTINDEX;
	FUNC6(i2c_stuff, 1);
	FUNC5(i2c_stuff, 1);
	FUNC4(20);

	ret = FUNC1(&i2c_stuff->adapter);
	if (ret == 0)
		FUNC0("I2C bus %s registered.\n", i2c_stuff->adapter.name);
	else
		FUNC0("Failed to register I2C bus %s.\n",
			i2c_stuff->adapter.name);
	return ret;
}
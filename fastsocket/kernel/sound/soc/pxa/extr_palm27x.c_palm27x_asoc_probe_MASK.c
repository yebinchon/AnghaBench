#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_9__ ;
typedef  struct TYPE_12__   TYPE_8__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {scalar_t__ platform_data; } ;
struct platform_device {TYPE_9__ dev; } ;
struct palm27x_asoc_info {int /*<<< orphan*/  jack_gpio; } ;
struct TYPE_12__ {int /*<<< orphan*/  gpio; } ;
struct TYPE_11__ {int /*<<< orphan*/ * dev; } ;
struct TYPE_10__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (TYPE_9__*,char*) ; 
 TYPE_8__* hs_jack_gpios ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 () ; 
 TYPE_2__ palm27x_snd_devdata ; 
 TYPE_1__* palm27x_snd_device ; 
 int FUNC5 (TYPE_1__*) ; 
 TYPE_1__* FUNC6 (char*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,TYPE_2__*) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	int ret;

	if (!(FUNC4() || FUNC2() ||
		FUNC1() || FUNC3()))
		return -ENODEV;

	if (!pdev->dev.platform_data) {
		FUNC0(&pdev->dev, "please supply platform_data\n");
		return -ENODEV;
	}

	hs_jack_gpios[0].gpio = ((struct palm27x_asoc_info *)
			(pdev->dev.platform_data))->jack_gpio;

	palm27x_snd_device = FUNC6("soc-audio", -1);
	if (!palm27x_snd_device)
		return -ENOMEM;

	FUNC8(palm27x_snd_device, &palm27x_snd_devdata);
	palm27x_snd_devdata.dev = &palm27x_snd_device->dev;
	ret = FUNC5(palm27x_snd_device);

	if (ret != 0)
		goto put_device;

	return 0;

put_device:
	FUNC7(palm27x_snd_device);

	return ret;
}
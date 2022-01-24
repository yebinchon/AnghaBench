#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_9__ {int /*<<< orphan*/ * dev; } ;
struct TYPE_8__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_2__ mioa701_snd_devdata ; 
 TYPE_1__* mioa701_snd_device ; 
 int FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,TYPE_2__*) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	int ret;

	if (!FUNC1())
		return -ENODEV;

	FUNC0(&pdev->dev, "Be warned that incorrect mixers/muxes setup will"
		 "lead to overheating and possible destruction of your device."
		 "Do not use without a good knowledge of mio's board design!\n");

	mioa701_snd_device = FUNC3("soc-audio", -1);
	if (!mioa701_snd_device)
		return -ENOMEM;

	FUNC5(mioa701_snd_device, &mioa701_snd_devdata);
	mioa701_snd_devdata.dev = &mioa701_snd_device->dev;

	ret = FUNC2(mioa701_snd_device);
	if (!ret)
		return 0;

	FUNC4(mioa701_snd_device);
	return ret;
}
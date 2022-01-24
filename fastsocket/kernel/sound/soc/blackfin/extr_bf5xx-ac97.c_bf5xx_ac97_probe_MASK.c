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
struct snd_soc_dai {int dummy; } ;
struct platform_device {int dummy; } ;
struct ac97_frame {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_SND_BF5XX_RESET_GPIO_NUM ; 
 int EBUSY ; 
 int EFAULT ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IRFS ; 
 int /*<<< orphan*/  ITFS ; 
 int* cmd_count ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  sport_handle ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *) ; 
 size_t sport_num ; 
 int /*<<< orphan*/ * sport_params ; 
 int /*<<< orphan*/ * sport_req ; 
 int FUNC12 (int /*<<< orphan*/ ,int,int,int) ; 

__attribute__((used)) static int FUNC13(struct platform_device *pdev,
			    struct snd_soc_dai *dai)
{
	int ret = 0;
	cmd_count = (int *)FUNC1(GFP_KERNEL);
	if (cmd_count == NULL)
		return -ENOMEM;

	if (FUNC7(sport_req[sport_num], "soc-audio")) {
		FUNC8("Requesting Peripherals failed\n");
		ret =  -EFAULT;
		goto peripheral_err;
	}

#ifdef CONFIG_SND_BF5XX_HAVE_COLD_RESET
	/* Request PB3 as reset pin */
	if (gpio_request(CONFIG_SND_BF5XX_RESET_GPIO_NUM, "SND_AD198x RESET")) {
		pr_err("Failed to request GPIO_%d for reset\n",
				CONFIG_SND_BF5XX_RESET_GPIO_NUM);
		ret =  -1;
		goto gpio_err;
	}
	gpio_direction_output(CONFIG_SND_BF5XX_RESET_GPIO_NUM, 1);
#endif
	sport_handle = FUNC11(&sport_params[sport_num], 2, \
			sizeof(struct ac97_frame), NULL);
	if (!sport_handle) {
		ret = -ENODEV;
		goto sport_err;
	}
	/*SPORT works in TDM mode to simulate AC97 transfers*/
#if defined(CONFIG_SND_BF5XX_MULTICHAN_SUPPORT)
	ret = sport_set_multichannel(sport_handle, 16, 0x3FF, 1);
#else
	ret = FUNC12(sport_handle, 16, 0x1F, 1);
#endif
	if (ret) {
		FUNC8("SPORT is busy!\n");
		ret = -EBUSY;
		goto sport_config_err;
	}

	ret = FUNC9(sport_handle, IRFS, 0xF, 0, (16*16-1));
	if (ret) {
		FUNC8("SPORT is busy!\n");
		ret = -EBUSY;
		goto sport_config_err;
	}

	ret = FUNC10(sport_handle, ITFS, 0xF, 0, (16*16-1));
	if (ret) {
		FUNC8("SPORT is busy!\n");
		ret = -EBUSY;
		goto sport_config_err;
	}

	return 0;

sport_config_err:
	FUNC5(sport_handle);
sport_err:
#ifdef CONFIG_SND_BF5XX_HAVE_COLD_RESET
	gpio_free(CONFIG_SND_BF5XX_RESET_GPIO_NUM);
gpio_err:
#endif
	FUNC6(sport_req[sport_num]);
peripheral_err:
	FUNC0((unsigned long)cmd_count);
	cmd_count = NULL;

	return ret;
}
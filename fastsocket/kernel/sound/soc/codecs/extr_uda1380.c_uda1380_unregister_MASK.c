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
struct snd_soc_codec {TYPE_1__* dev; } ;
struct uda1380_priv {struct snd_soc_codec codec; } ;
struct uda1380_platform_data {int /*<<< orphan*/  gpio_power; int /*<<< orphan*/  gpio_reset; } ;
struct TYPE_2__ {struct uda1380_platform_data* platform_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct uda1380_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_codec*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * uda1380_codec ; 
 int /*<<< orphan*/  uda1380_dai ; 

__attribute__((used)) static void FUNC6(struct uda1380_priv *uda1380)
{
	struct snd_soc_codec *codec = &uda1380->codec;
	struct uda1380_platform_data *pdata = codec->dev->platform_data;

	FUNC5(uda1380_dai, FUNC0(uda1380_dai));
	FUNC4(&uda1380->codec);

	FUNC2(pdata->gpio_power, 0);
	FUNC1(pdata->gpio_reset);
	FUNC1(pdata->gpio_power);

	FUNC3(uda1380);
	uda1380_codec = NULL;
}
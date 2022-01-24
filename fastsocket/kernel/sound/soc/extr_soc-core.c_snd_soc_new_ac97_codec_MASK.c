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
struct snd_soc_codec {int /*<<< orphan*/  mutex; TYPE_2__* ac97; } ;
struct snd_ac97_bus_ops {int dummy; } ;
struct snd_ac97_bus {int dummy; } ;
struct snd_ac97 {int dummy; } ;
struct TYPE_4__ {int num; TYPE_1__* bus; } ;
struct TYPE_3__ {struct snd_ac97_bus_ops* ops; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 void* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct snd_soc_codec *codec,
	struct snd_ac97_bus_ops *ops, int num)
{
	FUNC2(&codec->mutex);

	codec->ac97 = FUNC1(sizeof(struct snd_ac97), GFP_KERNEL);
	if (codec->ac97 == NULL) {
		FUNC3(&codec->mutex);
		return -ENOMEM;
	}

	codec->ac97->bus = FUNC1(sizeof(struct snd_ac97_bus), GFP_KERNEL);
	if (codec->ac97->bus == NULL) {
		FUNC0(codec->ac97);
		codec->ac97 = NULL;
		FUNC3(&codec->mutex);
		return -ENOMEM;
	}

	codec->ac97->bus->ops = ops;
	codec->ac97->num = num;
	FUNC3(&codec->mutex);
	return 0;
}
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
struct snd_soc_codec {int /*<<< orphan*/  mutex; TYPE_1__* ac97; } ;
struct TYPE_2__ {struct TYPE_2__* bus; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct snd_soc_codec *codec)
{
	FUNC1(&codec->mutex);
	FUNC0(codec->ac97->bus);
	FUNC0(codec->ac97);
	codec->ac97 = NULL;
	FUNC2(&codec->mutex);
}
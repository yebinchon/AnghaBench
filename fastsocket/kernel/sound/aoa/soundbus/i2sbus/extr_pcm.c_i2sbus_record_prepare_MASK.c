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
struct snd_pcm_substream {int dummy; } ;
struct TYPE_2__ {struct snd_pcm_substream* substream; } ;
struct i2sbus_dev {TYPE_1__ in; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct i2sbus_dev*,int) ; 
 struct i2sbus_dev* FUNC1 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC2(struct snd_pcm_substream *substream)
{
	struct i2sbus_dev *i2sdev = FUNC1(substream);

	if (!i2sdev)
		return -EINVAL;
	if (i2sdev->in.substream != substream)
		return -EINVAL;
	return FUNC0(i2sdev, 1);
}
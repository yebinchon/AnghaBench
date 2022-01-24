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
struct TYPE_2__ {scalar_t__ stopping; } ;
struct pcm_info {TYPE_1__ dbdma_ring; } ;
struct i2sbus_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct i2sbus_dev*,int,struct pcm_info**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct i2sbus_dev*,struct pcm_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_pcm_substream*) ; 
 struct i2sbus_dev* FUNC3 (struct snd_pcm_substream*) ; 

__attribute__((used)) static inline int FUNC4(struct snd_pcm_substream *substream, int in)
{
	struct i2sbus_dev *i2sdev = FUNC3(substream);
	struct pcm_info *pi;

	FUNC0(i2sdev, in, &pi, NULL);
	if (pi->dbdma_ring.stopping)
		FUNC1(i2sdev, pi);
	FUNC2(substream);
	return 0;
}
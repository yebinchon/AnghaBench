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
struct v4l2_frequency {scalar_t__ frequency; } ;
struct snd_tea575x {scalar_t__ freq; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FREQ_HI ; 
 scalar_t__ FREQ_LO ; 
 int /*<<< orphan*/  FUNC0 (struct snd_tea575x*) ; 
 struct snd_tea575x* FUNC1 (struct file*) ; 

__attribute__((used)) static int FUNC2(struct file *file, void *priv,
					struct v4l2_frequency *f)
{
	struct snd_tea575x *tea = FUNC1(file);

	if (f->frequency < FREQ_LO || f->frequency > FREQ_HI)
		return -EINVAL;

	tea->freq = f->frequency;

	FUNC0(tea);

	return 0;
}
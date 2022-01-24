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
struct v4l2_control {int id; int /*<<< orphan*/  value; } ;
struct snd_tea575x {int mute; TYPE_1__* ops; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* mute ) (struct snd_tea575x*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int EINVAL ; 
#define  V4L2_CID_AUDIO_MUTE 128 
 int /*<<< orphan*/  FUNC0 (struct snd_tea575x*,int /*<<< orphan*/ ) ; 
 struct snd_tea575x* FUNC1 (struct file*) ; 

__attribute__((used)) static int FUNC2(struct file *file, void *priv,
					struct v4l2_control *ctrl)
{
	struct snd_tea575x *tea = FUNC1(file);

	switch (ctrl->id) {
	case V4L2_CID_AUDIO_MUTE:
		if (tea->ops->mute) {
			tea->ops->mute(tea, ctrl->value);
			tea->mute = 1;
			return 0;
		}
	}
	return -EINVAL;
}
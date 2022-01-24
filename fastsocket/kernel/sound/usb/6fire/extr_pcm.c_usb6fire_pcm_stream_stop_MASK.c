#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct pcm_runtime {scalar_t__ stream_state; TYPE_1__* out_urbs; TYPE_3__* in_urbs; TYPE_2__* chip; } ;
struct control_runtime {int usb_streaming; int /*<<< orphan*/  (* update_streaming ) (struct control_runtime*) ;} ;
struct TYPE_6__ {int /*<<< orphan*/  instance; } ;
struct TYPE_5__ {struct control_runtime* control; } ;
struct TYPE_4__ {int /*<<< orphan*/  instance; } ;

/* Variables and functions */
 int PCM_N_URBS ; 
 scalar_t__ STREAM_DISABLED ; 
 int /*<<< orphan*/  FUNC0 (struct control_runtime*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct pcm_runtime *rt)
{
	int i;
	struct control_runtime *ctrl_rt = rt->chip->control;

	if (rt->stream_state != STREAM_DISABLED) {
		for (i = 0; i < PCM_N_URBS; i++) {
			FUNC1(&rt->in_urbs[i].instance);
			FUNC1(&rt->out_urbs[i].instance);
		}
		ctrl_rt->usb_streaming = false;
		ctrl_rt->update_streaming(ctrl_rt);
		rt->stream_state = STREAM_DISABLED;
	}
}
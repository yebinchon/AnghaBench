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
struct cx25821_fh {int type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
#define  V4L2_BUF_TYPE_VIDEO_CAPTURE 128 

int FUNC1(struct cx25821_fh *fh, int resource)
{
	switch (fh->type) {
	case V4L2_BUF_TYPE_VIDEO_CAPTURE:
		return resource;
	default:
		FUNC0();
		return 0;
	}
}
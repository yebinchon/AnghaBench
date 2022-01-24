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
struct videobuf_queue {int dummy; } ;
struct cx25821_fh {int type; struct videobuf_queue vidq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
#define  V4L2_BUF_TYPE_VIDEO_CAPTURE 128 

struct videobuf_queue *FUNC1(struct cx25821_fh *fh)
{
	switch (fh->type) {
	case V4L2_BUF_TYPE_VIDEO_CAPTURE:
		return &fh->vidq;
	default:
		FUNC0();
		return NULL;
	}
}
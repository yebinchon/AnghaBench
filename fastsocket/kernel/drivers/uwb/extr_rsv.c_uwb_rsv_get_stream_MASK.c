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
struct TYPE_6__ {int type; TYPE_1__* dev; } ;
struct uwb_rsv {int stream; TYPE_3__ target; struct uwb_rc* rc; } ;
struct device {int dummy; } ;
struct TYPE_5__ {unsigned long* streams; struct device dev; } ;
struct uwb_rc {TYPE_2__ uwb_dev; } ;
struct TYPE_4__ {unsigned long* streams; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int UWB_NUM_STREAMS ; 
#define  UWB_RSV_TARGET_DEV 129 
#define  UWB_RSV_TARGET_DEVADDR 128 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 int FUNC1 (unsigned long*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,unsigned long*) ; 

__attribute__((used)) static int FUNC3(struct uwb_rsv *rsv)
{
	struct uwb_rc *rc = rsv->rc;
	struct device *dev = &rc->uwb_dev.dev;
	unsigned long *streams_bm;
	int stream;

	switch (rsv->target.type) {
	case UWB_RSV_TARGET_DEV:
		streams_bm = rsv->target.dev->streams;
		break;
	case UWB_RSV_TARGET_DEVADDR:
		streams_bm = rc->uwb_dev.streams;
		break;
	default:
		return -EINVAL;
	}

	stream = FUNC1(streams_bm, UWB_NUM_STREAMS);
	if (stream >= UWB_NUM_STREAMS)
		return -EBUSY;

	rsv->stream = stream;
	FUNC2(stream, streams_bm);

	FUNC0(dev, "get stream %d\n", rsv->stream);

	return 0;
}
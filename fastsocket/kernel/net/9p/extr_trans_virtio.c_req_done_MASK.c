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
struct virtqueue {TYPE_1__* vdev; } ;
struct virtio_chan {int /*<<< orphan*/  client; int /*<<< orphan*/  vq; } ;
struct p9_req_t {int /*<<< orphan*/  status; } ;
struct p9_fcall {struct p9_fcall* tag; } ;
struct TYPE_2__ {struct virtio_chan* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  P9_DEBUG_TRANS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  REQ_STATUS_RCVD ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct p9_req_t*) ; 
 struct p9_req_t* FUNC2 (int /*<<< orphan*/ ,struct p9_fcall*) ; 
 struct p9_fcall* FUNC3 (int /*<<< orphan*/ ,unsigned int*) ; 

__attribute__((used)) static void FUNC4(struct virtqueue *vq)
{
	struct virtio_chan *chan = vq->vdev->priv;
	struct p9_fcall *rc;
	unsigned int len;
	struct p9_req_t *req;

	FUNC0(P9_DEBUG_TRANS, ": request done\n");

	while ((rc = FUNC3(chan->vq, &len)) != NULL) {
		FUNC0(P9_DEBUG_TRANS, ": rc %p\n", rc);
		FUNC0(P9_DEBUG_TRANS, ": lookup tag %d\n", rc->tag);
		req = FUNC2(chan->client, rc->tag);
		req->status = REQ_STATUS_RCVD;
		FUNC1(chan->client, req);
	}
}
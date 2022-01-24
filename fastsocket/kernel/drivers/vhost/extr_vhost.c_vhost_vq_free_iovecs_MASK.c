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
struct vhost_virtqueue {int /*<<< orphan*/ * ubuf_info; int /*<<< orphan*/ * heads; int /*<<< orphan*/ * log; int /*<<< orphan*/ * indirect; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(struct vhost_virtqueue *vq)
{
	FUNC0(vq->indirect);
	vq->indirect = NULL;
	FUNC0(vq->log);
	vq->log = NULL;
	FUNC0(vq->heads);
	vq->heads = NULL;
	FUNC0(vq->ubuf_info);
	vq->ubuf_info = NULL;
}
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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u16 ;
struct virtio_balloon {TYPE_1__* stats; } ;
struct TYPE_2__ {int /*<<< orphan*/  val; int /*<<< orphan*/  tag; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int VIRTIO_BALLOON_S_NR ; 

__attribute__((used)) static inline void FUNC1(struct virtio_balloon *vb, int idx,
			       u16 tag, u64 val)
{
	FUNC0(idx >= VIRTIO_BALLOON_S_NR);
	vb->stats[idx].tag = tag;
	vb->stats[idx].val = val;
}
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
struct virtio_balloon {int dummy; } ;
struct sysinfo {unsigned long freeram; unsigned long totalram; } ;

/* Variables and functions */
 int NR_VM_EVENT_ITEMS ; 
 size_t PGFAULT ; 
 size_t PGMAJFAULT ; 
 size_t PSWPIN ; 
 size_t PSWPOUT ; 
 int /*<<< orphan*/  VIRTIO_BALLOON_S_MAJFLT ; 
 int /*<<< orphan*/  VIRTIO_BALLOON_S_MEMFREE ; 
 int /*<<< orphan*/  VIRTIO_BALLOON_S_MEMTOT ; 
 int /*<<< orphan*/  VIRTIO_BALLOON_S_MINFLT ; 
 int /*<<< orphan*/  VIRTIO_BALLOON_S_SWAP_IN ; 
 int /*<<< orphan*/  VIRTIO_BALLOON_S_SWAP_OUT ; 
 int /*<<< orphan*/  FUNC0 (unsigned long*) ; 
 unsigned long FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct sysinfo*) ; 
 int /*<<< orphan*/  FUNC3 (struct virtio_balloon*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct virtio_balloon *vb)
{
	unsigned long events[NR_VM_EVENT_ITEMS];
	struct sysinfo i;
	int idx = 0;

	FUNC0(events);
	FUNC2(&i);

	FUNC3(vb, idx++, VIRTIO_BALLOON_S_SWAP_IN,
				FUNC1(events[PSWPIN]));
	FUNC3(vb, idx++, VIRTIO_BALLOON_S_SWAP_OUT,
				FUNC1(events[PSWPOUT]));
	FUNC3(vb, idx++, VIRTIO_BALLOON_S_MAJFLT, events[PGMAJFAULT]);
	FUNC3(vb, idx++, VIRTIO_BALLOON_S_MINFLT, events[PGFAULT]);
	FUNC3(vb, idx++, VIRTIO_BALLOON_S_MEMFREE,
				FUNC1(i.freeram));
	FUNC3(vb, idx++, VIRTIO_BALLOON_S_MEMTOT,
				FUNC1(i.totalram));
}
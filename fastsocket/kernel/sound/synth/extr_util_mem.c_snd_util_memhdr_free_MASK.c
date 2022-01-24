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
struct list_head {struct list_head* next; } ;
struct snd_util_memhdr {struct list_head block; } ;

/* Variables and functions */
 struct snd_util_memhdr* FUNC0 (struct list_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_util_memhdr*) ; 
 int /*<<< orphan*/  FUNC2 (struct list_head*) ; 

void FUNC3(struct snd_util_memhdr *hdr)
{
	struct list_head *p;

	if (!hdr)
		return;
	/* release all blocks */
	while ((p = hdr->block.next) != &hdr->block) {
		FUNC2(p);
		FUNC1(FUNC0(p));
	}
	FUNC1(hdr);
}
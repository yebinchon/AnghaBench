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
struct snd_util_memhdr {int /*<<< orphan*/  used; int /*<<< orphan*/  nblocks; } ;
struct snd_util_memblk {scalar_t__ size; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_util_memblk*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void
FUNC2(struct snd_util_memhdr *hdr, struct snd_util_memblk *blk)
{
	FUNC1(&blk->list);
	hdr->nblocks--;
	hdr->used -= blk->size;
	FUNC0(blk);
}
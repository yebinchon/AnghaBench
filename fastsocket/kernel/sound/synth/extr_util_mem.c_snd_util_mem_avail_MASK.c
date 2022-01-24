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
struct snd_util_memhdr {unsigned int size; unsigned int used; int /*<<< orphan*/  block_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

int FUNC2(struct snd_util_memhdr *hdr)
{
	unsigned int size;
	FUNC0(&hdr->block_mutex);
	size = hdr->size - hdr->used;
	FUNC1(&hdr->block_mutex);
	return size;
}
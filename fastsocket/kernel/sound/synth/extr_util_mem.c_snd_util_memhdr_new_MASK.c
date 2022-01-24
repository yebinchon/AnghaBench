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
struct snd_util_memhdr {int size; int /*<<< orphan*/  block; int /*<<< orphan*/  block_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct snd_util_memhdr* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

struct snd_util_memhdr *
FUNC3(int memsize)
{
	struct snd_util_memhdr *hdr;

	hdr = FUNC1(sizeof(*hdr), GFP_KERNEL);
	if (hdr == NULL)
		return NULL;
	hdr->size = memsize;
	FUNC2(&hdr->block_mutex);
	FUNC0(&hdr->block);

	return hdr;
}
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
struct snd_dma_buffer {int dummy; } ;
struct snd_mem_list {unsigned int id; int /*<<< orphan*/  list; struct snd_dma_buffer buffer; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int) ; 
 struct snd_mem_list* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  list_mutex ; 
 int /*<<< orphan*/  mem_list_head ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct snd_dma_buffer *dmab, unsigned int id)
{
	struct snd_mem_list *mem;

	if (FUNC0(!dmab))
		return -EINVAL;
	mem = FUNC1(sizeof(*mem), GFP_KERNEL);
	if (! mem)
		return -ENOMEM;
	FUNC3(&list_mutex);
	mem->buffer = *dmab;
	mem->id = id;
	FUNC2(&mem->list, &mem_list_head);
	FUNC4(&list_mutex);
	return 0;
}
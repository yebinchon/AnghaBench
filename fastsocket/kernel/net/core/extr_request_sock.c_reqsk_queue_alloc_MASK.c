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
struct request_sock_queue {int /*<<< orphan*/  syn_wait_lock; struct listen_sock* listen_opt; int /*<<< orphan*/ * rskq_accept_head; } ;
struct request_sock {int dummy; } ;
struct listen_sock {int max_qlen_log; unsigned int nr_table_entries; int /*<<< orphan*/  hash_rnd; } ;

/* Variables and functions */
 int ENOMEM ; 
 int GFP_KERNEL ; 
 int /*<<< orphan*/  PAGE_KERNEL ; 
 size_t PAGE_SIZE ; 
 int __GFP_HIGHMEM ; 
 int __GFP_ZERO ; 
 struct listen_sock* FUNC0 (size_t,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 struct listen_sock* FUNC2 (size_t,int) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ,unsigned int,int) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC5 (unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sysctl_max_syn_backlog ; 
 int /*<<< orphan*/  u32 ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(struct request_sock_queue *queue,
		      unsigned int nr_table_entries)
{
	size_t lopt_size = sizeof(struct listen_sock);
	struct listen_sock *lopt;

	nr_table_entries = FUNC4(u32, nr_table_entries, sysctl_max_syn_backlog);
	nr_table_entries = FUNC3(u32, nr_table_entries, 8);
	nr_table_entries = FUNC5(nr_table_entries + 1);
	lopt_size += nr_table_entries * sizeof(struct request_sock *);
	if (lopt_size > PAGE_SIZE)
		lopt = FUNC0(lopt_size,
			GFP_KERNEL | __GFP_HIGHMEM | __GFP_ZERO,
			PAGE_KERNEL);
	else
		lopt = FUNC2(lopt_size, GFP_KERNEL);
	if (lopt == NULL)
		return -ENOMEM;

	for (lopt->max_qlen_log = 3;
	     (1 << lopt->max_qlen_log) < nr_table_entries;
	     lopt->max_qlen_log++);

	FUNC1(&lopt->hash_rnd, sizeof(lopt->hash_rnd));
	FUNC6(&queue->syn_wait_lock);
	queue->rskq_accept_head = NULL;
	lopt->nr_table_entries = nr_table_entries;

	FUNC7(&queue->syn_wait_lock);
	queue->listen_opt = lopt;
	FUNC8(&queue->syn_wait_lock);

	return 0;
}
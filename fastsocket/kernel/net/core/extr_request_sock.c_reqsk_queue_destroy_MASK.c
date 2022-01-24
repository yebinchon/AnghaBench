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
struct request_sock_queue {int dummy; } ;
struct request_sock {struct request_sock* dl_next; } ;
struct listen_sock {int nr_table_entries; scalar_t__ qlen; struct request_sock** syn_table; } ;

/* Variables and functions */
 size_t PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct listen_sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct request_sock*) ; 
 struct listen_sock* FUNC3 (struct request_sock_queue*) ; 
 int /*<<< orphan*/  FUNC4 (struct listen_sock*) ; 

void FUNC5(struct request_sock_queue *queue)
{
	/* make all the listen_opt local to us */
	struct listen_sock *lopt = FUNC3(queue);
	size_t lopt_size = sizeof(struct listen_sock) +
		lopt->nr_table_entries * sizeof(struct request_sock *);

	if (lopt->qlen != 0) {
		unsigned int i;

		for (i = 0; i < lopt->nr_table_entries; i++) {
			struct request_sock *req;

			while ((req = lopt->syn_table[i]) != NULL) {
				lopt->syn_table[i] = req->dl_next;
				lopt->qlen--;
				FUNC2(req);
			}
		}
	}

	FUNC0(lopt->qlen != 0);
	if (lopt_size > PAGE_SIZE)
		FUNC4(lopt);
	else
		FUNC1(lopt);
}
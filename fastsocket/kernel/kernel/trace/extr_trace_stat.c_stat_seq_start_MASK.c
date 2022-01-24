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
struct stat_session {int /*<<< orphan*/  stat_root; TYPE_1__* ts; int /*<<< orphan*/  stat_mutex; } ;
struct seq_file {struct stat_session* private; } ;
typedef  void rb_node ;
typedef  int loff_t ;
struct TYPE_2__ {scalar_t__ stat_headers; } ;

/* Variables and functions */
 void* SEQ_START_TOKEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 void* FUNC1 (int /*<<< orphan*/ *) ; 
 void* FUNC2 (void*) ; 

__attribute__((used)) static void *FUNC3(struct seq_file *s, loff_t *pos)
{
	struct stat_session *session = s->private;
	struct rb_node *node;
	int n = *pos;
	int i;

	/* Prevent from tracer switch or rbtree modification */
	FUNC0(&session->stat_mutex);

	/* If we are in the beginning of the file, print the headers */
	if (session->ts->stat_headers) {
		if (n == 0)
			return SEQ_START_TOKEN;
		n--;
	}

	node = FUNC1(&session->stat_root);
	for (i = 0; node && i < n; i++)
		node = FUNC2(node);

	return node;
}
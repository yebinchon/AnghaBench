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
struct snd_seq_fifo {scalar_t__ cells; int /*<<< orphan*/ * tail; int /*<<< orphan*/ * head; int /*<<< orphan*/  overflow; int /*<<< orphan*/  input_sleep; int /*<<< orphan*/  use_lock; int /*<<< orphan*/  lock; int /*<<< orphan*/ * pool; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_seq_fifo*) ; 
 struct snd_seq_fifo* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

struct snd_seq_fifo *FUNC10(int poolsize)
{
	struct snd_seq_fifo *f;

	f = FUNC3(sizeof(*f), GFP_KERNEL);
	if (f == NULL) {
		FUNC4("malloc failed for snd_seq_fifo_new() \n");
		return NULL;
	}

	f->pool = FUNC7(poolsize);
	if (f->pool == NULL) {
		FUNC2(f);
		return NULL;
	}
	if (FUNC6(f->pool) < 0) {
		FUNC5(&f->pool);
		FUNC2(f);
		return NULL;
	}

	FUNC9(&f->lock);
	FUNC8(&f->use_lock);
	FUNC1(&f->input_sleep);
	FUNC0(&f->overflow, 0);

	f->head = NULL;
	f->tail = NULL;
	f->cells = 0;
	
	return f;
}
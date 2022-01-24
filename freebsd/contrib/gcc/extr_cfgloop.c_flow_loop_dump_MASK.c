#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct loop {int num; int depth; int level; unsigned int num_nodes; TYPE_3__* outer; TYPE_2__* latch; TYPE_1__* header; } ;
typedef  TYPE_4__* basic_block ;
struct TYPE_10__ {int index; } ;
struct TYPE_9__ {int num; } ;
struct TYPE_8__ {int index; } ;
struct TYPE_7__ {int index; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__**) ; 
 TYPE_4__** FUNC2 (struct loop const*) ; 

void
FUNC3 (const struct loop *loop, FILE *file,
		void (*loop_dump_aux) (const struct loop *, FILE *, int),
		int verbose)
{
  basic_block *bbs;
  unsigned i;

  if (! loop || ! loop->header)
    return;

  FUNC0 (file, ";;\n;; Loop %d\n", loop->num);

  FUNC0 (file, ";;  header %d, latch %d\n",
	   loop->header->index, loop->latch->index);
  FUNC0 (file, ";;  depth %d, level %d, outer %ld\n",
	   loop->depth, loop->level,
	   (long) (loop->outer ? loop->outer->num : -1));

  FUNC0 (file, ";;  nodes:");
  bbs = FUNC2 (loop);
  for (i = 0; i < loop->num_nodes; i++)
    FUNC0 (file, " %d", bbs[i]->index);
  FUNC1 (bbs);
  FUNC0 (file, "\n");

  if (loop_dump_aux)
    loop_dump_aux (loop, file, verbose);
}
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
struct loops {int num; struct loop** parray; } ;
struct loop {int dummy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct loop*,int /*<<< orphan*/ *,void (*) (struct loop const*,int /*<<< orphan*/ *,int),int) ; 
 int /*<<< orphan*/  FUNC1 (struct loops const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 

void
FUNC3 (const struct loops *loops, FILE *file, void (*loop_dump_aux) (const struct loop *, FILE *, int), int verbose)
{
  int i;
  int num_loops;

  num_loops = loops->num;
  if (! num_loops || ! file)
    return;

  FUNC2 (file, ";; %d loops found\n", num_loops);

  for (i = 0; i < num_loops; i++)
    {
      struct loop *loop = loops->parray[i];

      if (!loop)
	continue;

      FUNC0 (loop, file, loop_dump_aux, verbose);
    }

  if (verbose)
    FUNC1 (loops, file);
}
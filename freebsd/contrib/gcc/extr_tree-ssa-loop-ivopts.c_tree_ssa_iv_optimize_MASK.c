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
struct loops {struct loop* tree_root; } ;
struct loop {struct loop* outer; struct loop* inner; struct loop* next; } ;
struct ivopts_data {int dummy; } ;

/* Variables and functions */
 int TDF_DETAILS ; 
 scalar_t__ dump_file ; 
 int dump_flags ; 
 int /*<<< orphan*/  FUNC0 (struct loop*,scalar_t__,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ivopts_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct ivopts_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct ivopts_data*,struct loop*) ; 

void
FUNC4 (struct loops *loops)
{
  struct loop *loop;
  struct ivopts_data data;

  FUNC2 (&data);

  /* Optimize the loops starting with the innermost ones.  */
  loop = loops->tree_root;
  while (loop->inner)
    loop = loop->inner;

  /* Scan the loops, inner ones first.  */
  while (loop != loops->tree_root)
    {
      if (dump_file && (dump_flags & TDF_DETAILS))
	FUNC0 (loop, dump_file, NULL, 1);

      FUNC3 (&data, loop);

      if (loop->next)
	{
	  loop = loop->next;
	  while (loop->inner)
	    loop = loop->inner;
	}
      else
	loop = loop->outer;
    }

  FUNC1 (&data);
}
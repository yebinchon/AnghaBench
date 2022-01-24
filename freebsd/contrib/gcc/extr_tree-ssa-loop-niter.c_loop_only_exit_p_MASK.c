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
typedef  scalar_t__ tree ;
struct loop {scalar_t__ single_exit; unsigned int num_nodes; } ;
typedef  scalar_t__ edge ;
typedef  int /*<<< orphan*/  block_stmt_iterator ;
typedef  int /*<<< orphan*/  basic_block ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (struct loop*) ; 

__attribute__((used)) static bool
FUNC8 (struct loop *loop, edge exit)
{
  basic_block *body;
  block_stmt_iterator bsi;
  unsigned i;
  tree call;

  if (exit != loop->single_exit)
    return false;

  body = FUNC7 (loop);
  for (i = 0; i < loop->num_nodes; i++)
    {
      for (bsi = FUNC3 (body[0]); !FUNC1 (bsi); FUNC2 (&bsi))
	{
	  call = FUNC6 (FUNC4 (bsi));
	  if (call && FUNC0 (call))
	    {
	      FUNC5 (body);
	      return false;
	    }
	}
    }

  FUNC5 (body);
  return true;
}
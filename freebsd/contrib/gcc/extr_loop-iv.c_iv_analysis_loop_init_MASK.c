#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct loop {unsigned int num_nodes; } ;
typedef  int /*<<< orphan*/  bitmap ;
typedef  TYPE_1__* basic_block ;
struct TYPE_5__ {int /*<<< orphan*/  index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int DF_EQUIV_NOTES ; 
 int DF_HARD_REGS ; 
 int /*<<< orphan*/  DF_UD_CHAIN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  biv_eq ; 
 int /*<<< orphan*/  biv_hash ; 
 int /*<<< orphan*/  bivs ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct loop* current_loop ; 
 int /*<<< orphan*/ * df ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__**) ; 
 TYPE_1__** FUNC9 (struct loop*) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  (*) (TYPE_1__**)) ; 

void
FUNC11 (struct loop *loop)
{
  basic_block *body = FUNC9 (loop), bb;
  bitmap blocks = FUNC0 (NULL);
  unsigned i;
  bool first_time = (df == NULL);

  current_loop = loop;

  /* Clear the information from the analysis of the previous loop.  */
  if (first_time)
    {
      df = FUNC6 (DF_HARD_REGS | DF_EQUIV_NOTES);
      FUNC5 (df, DF_UD_CHAIN);
      bivs = FUNC10 (10, biv_hash, biv_eq, free);
    }
  else
    FUNC3 ();

  for (i = 0; i < loop->num_nodes; i++)
    {
      bb = body[i];
      FUNC2 (blocks, bb->index);
    }
  FUNC7 (df, blocks);
  FUNC4 (df); 
  FUNC1 (blocks);
  FUNC8 (body);
}
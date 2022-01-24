#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* edge ;
typedef  TYPE_2__* basic_block ;
struct TYPE_11__ {int index; int frequency; } ;
struct TYPE_10__ {int flags; TYPE_2__* dest; TYPE_2__* src; } ;

/* Variables and functions */
 int EDGE_COMPLEX ; 
 int EDGE_DFS_BACK ; 
 scalar_t__ dump_file ; 
 TYPE_1__* FUNC0 (TYPE_2__*) ; 
 TYPE_1__* FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,char*,...) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 

__attribute__((used)) static int
FUNC4 (basic_block bb, basic_block *trace)
{
  int i = 0;
  edge e;

  if (dump_file)
    FUNC2 (dump_file, "Trace seed %i [%i]", bb->index, bb->frequency);

  while ((e = FUNC0 (bb)) != NULL)
    {
      basic_block bb2 = e->src;
      if (FUNC3 (bb2) || (e->flags & (EDGE_DFS_BACK | EDGE_COMPLEX))
	  || FUNC1 (bb2) != e)
	break;
      if (dump_file)
	FUNC2 (dump_file, ",%i [%i]", bb->index, bb->frequency);
      bb = bb2;
    }
  if (dump_file)
    FUNC2 (dump_file, " forward %i [%i]", bb->index, bb->frequency);
  trace[i++] = bb;

  /* Follow the trace in forward direction.  */
  while ((e = FUNC1 (bb)) != NULL)
    {
      bb = e->dest;
      if (FUNC3 (bb) || (e->flags & (EDGE_DFS_BACK | EDGE_COMPLEX))
	  || FUNC0 (bb) != e)
	break;
      if (dump_file)
	FUNC2 (dump_file, ",%i [%i]", bb->index, bb->frequency);
      trace[i++] = bb;
    }
  if (dump_file)
    FUNC2 (dump_file, "\n");
  return i;
}
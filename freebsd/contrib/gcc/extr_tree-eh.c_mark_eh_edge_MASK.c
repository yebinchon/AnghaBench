#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
struct eh_region {int dummy; } ;
typedef  TYPE_1__* edge ;
typedef  TYPE_2__* basic_block ;
struct TYPE_9__ {char* index; } ;
struct TYPE_8__ {int flags; void* aux; } ;

/* Variables and functions */
 int EDGE_EH ; 
 TYPE_2__* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*) ; 
 TYPE_1__* FUNC2 (TYPE_2__*,TYPE_2__*) ; 
 scalar_t__ FUNC3 (struct eh_region*) ; 
 TYPE_2__* FUNC4 (scalar_t__) ; 
 int mark_eh_edge_found_error ; 

__attribute__((used)) static void
FUNC5 (struct eh_region *region, void *data)
{
  tree stmt, lab;
  basic_block src, dst;
  edge e;

  stmt = (tree) data;
  lab = FUNC3 (region);

  src = FUNC0 (stmt);
  dst = FUNC4 (lab);

  e = FUNC2 (src, dst);
  if (!e)
    {
      FUNC1 ("EH edge %i->%i is missing", src->index, dst->index);
      mark_eh_edge_found_error = true;
    }
  else if (!(e->flags & EDGE_EH))
    {
      FUNC1 ("EH edge %i->%i miss EH flag", src->index, dst->index);
      mark_eh_edge_found_error = true;
    }
  else if (e->aux)
    {
      /* ??? might not be mistake.  */
      FUNC1 ("EH edge %i->%i has duplicated regions", src->index, dst->index);
      mark_eh_edge_found_error = true;
    }
  else
    e->aux = (void *)1;
}
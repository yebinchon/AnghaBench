#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* edge ;
typedef  TYPE_2__* basic_block ;
struct TYPE_14__ {int flags; } ;
struct TYPE_13__ {int /*<<< orphan*/  succs; } ;
struct TYPE_12__ {int flags; TYPE_2__* dest; TYPE_2__* src; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int EDGE_IRREDUCIBLE_LOOP ; 
 TYPE_1__* FUNC2 (TYPE_2__*,int) ; 
 TYPE_2__* EXIT_BLOCK_PTR ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,TYPE_2__*) ; 
 TYPE_3__* FUNC6 (TYPE_2__*) ; 

__attribute__((used)) static bool
FUNC7 (edge e, int really_delete)
{
  basic_block src = e->src;
  basic_block newdest;
  int irr;
  edge snd;

  FUNC4 (FUNC1 (src->succs) > 1);

  /* Cannot handle more than two exit edges.  */
  if (FUNC1 (src->succs) > 2)
    return false;
  /* And it must be just a simple branch.  */
  if (!FUNC3 (FUNC0 (src)))
    return false;

  snd = e == FUNC2 (src, 0) ? FUNC2 (src, 1) : FUNC2 (src, 0);
  newdest = snd->dest;
  if (newdest == EXIT_BLOCK_PTR)
    return false;

  /* Hopefully the above conditions should suffice.  */
  if (!really_delete)
    return true;

  /* Redirecting behaves wrongly wrto this flag.  */
  irr = snd->flags & EDGE_IRREDUCIBLE_LOOP;

  if (!FUNC5 (e, newdest))
    return false;
  FUNC6 (src)->flags &= ~EDGE_IRREDUCIBLE_LOOP;
  FUNC6 (src)->flags |= irr;

  return true;
}
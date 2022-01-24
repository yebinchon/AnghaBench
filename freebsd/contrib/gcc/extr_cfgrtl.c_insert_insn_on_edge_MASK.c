#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  rtx ;
typedef  TYPE_2__* edge ;
struct TYPE_5__ {scalar_t__ r; } ;
struct TYPE_6__ {int flags; TYPE_1__ insns; } ;

/* Variables and functions */
 int EDGE_ABNORMAL ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 scalar_t__ NULL_RTX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 () ; 

void
FUNC7 (rtx pattern, edge e)
{
  /* We cannot insert instructions on an abnormal critical edge.
     It will be easier to find the culprit if we die now.  */
  FUNC3 (!((e->flags & EDGE_ABNORMAL) && FUNC0 (e)));

  if (e->insns.r == NULL_RTX)
    FUNC6 ();
  else
    FUNC5 (e->insns.r);

  FUNC1 (pattern);

  e->insns.r = FUNC4 ();
  FUNC2 ();
}
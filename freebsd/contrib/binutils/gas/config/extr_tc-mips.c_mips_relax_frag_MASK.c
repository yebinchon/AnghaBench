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
typedef  int offsetT ;
struct TYPE_5__ {int fr_var; int /*<<< orphan*/  fr_subtype; } ;
typedef  TYPE_1__ fragS ;
typedef  int /*<<< orphan*/  asection ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC5 (TYPE_1__*,int /*<<< orphan*/ *,long) ; 
 int FUNC6 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC7 (asection *sec, fragS *fragp, long stretch)
{
  if (FUNC0 (fragp->fr_subtype))
    {
      offsetT old_var = fragp->fr_var;

      fragp->fr_var = FUNC6 (fragp, sec, TRUE);

      return fragp->fr_var - old_var;
    }

  if (! FUNC4 (fragp->fr_subtype))
    return 0;

  if (FUNC5 (fragp, NULL, stretch))
    {
      if (FUNC2 (fragp->fr_subtype))
	return 0;
      fragp->fr_subtype = FUNC3 (fragp->fr_subtype);
      return 2;
    }
  else
    {
      if (! FUNC2 (fragp->fr_subtype))
	return 0;
      fragp->fr_subtype = FUNC1 (fragp->fr_subtype);
      return -2;
    }

  return 0;
}
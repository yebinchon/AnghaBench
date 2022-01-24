#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int sort_type ;
struct TYPE_6__ {int /*<<< orphan*/  owner; } ;
typedef  TYPE_1__ asection ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
#define  by_alignment 131 
#define  by_alignment_name 130 
#define  by_name 129 
#define  by_name_alignment 128 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4 (sort_type sort, asection *asec, asection *bsec)
{
  int ret;

  switch (sort)
    {
    default:
      FUNC0 ();

    case by_alignment_name:
      ret = (FUNC2 (bsec->owner, bsec)
	     - FUNC2 (asec->owner, asec));
      if (ret)
	break;
      /* Fall through.  */

    case by_name:
      ret = FUNC3 (FUNC1 (asec->owner, asec),
		    FUNC1 (bsec->owner, bsec));
      break;

    case by_name_alignment:
      ret = FUNC3 (FUNC1 (asec->owner, asec),
		    FUNC1 (bsec->owner, bsec));
      if (ret)
	break;
      /* Fall through.  */

    case by_alignment:
      ret = (FUNC2 (bsec->owner, bsec)
	     - FUNC2 (asec->owner, asec));
      break;
    }

  return ret;
}
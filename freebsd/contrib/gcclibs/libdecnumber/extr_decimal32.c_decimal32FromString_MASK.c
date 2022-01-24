#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  decimal32 ;
typedef  int /*<<< orphan*/  decNumber ;
struct TYPE_7__ {scalar_t__ status; int /*<<< orphan*/  round; } ;
typedef  TYPE_1__ decContext ;

/* Variables and functions */
 int /*<<< orphan*/  DEC_INIT_DECIMAL32 ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 

decimal32 *
FUNC4 (decimal32 * result, const char *string, decContext * set)
{
  decContext dc;		/* work */
  decNumber dn;			/* .. */

  FUNC0 (&dc, DEC_INIT_DECIMAL32);	/* no traps, please */
  dc.round = set->round;	/* use supplied rounding */

  FUNC2 (&dn, string, &dc);	/* will round if needed */
  FUNC3 (result, &dn, &dc);
  if (dc.status != 0)
    {				/* something happened */
      FUNC1 (set, dc.status);	/* .. pass it on */
    }
  return result;
}
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
typedef  int /*<<< orphan*/  decNumber ;
struct TYPE_5__ {scalar_t__ traps; } ;
typedef  TYPE_1__ decContext ;
typedef  int /*<<< orphan*/  REAL_VALUE_TYPE ;

/* Variables and functions */
 int /*<<< orphan*/  DEC_INIT_DECIMAL128 ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 

void
FUNC3 (REAL_VALUE_TYPE *r, const char *s)
{
  decNumber dn;
  decContext set;
  FUNC0 (&set, DEC_INIT_DECIMAL128);
  set.traps = 0;

  FUNC1 (&dn, (char *) s, &set);

  /* It would be more efficient to store directly in decNumber format,
     but that is impractical from current data structure size.
     Encoding as a decimal128 is much more compact.  */
  FUNC2 (r, &dn, &set);
}
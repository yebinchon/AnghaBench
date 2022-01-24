#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  decimal128 ;
typedef  int /*<<< orphan*/  decNumber ;
struct TYPE_9__ {int /*<<< orphan*/  round; scalar_t__ traps; } ;
typedef  TYPE_1__ decContext ;
struct TYPE_10__ {scalar_t__ sig; } ;
typedef  TYPE_2__ REAL_VALUE_TYPE ;
typedef  int /*<<< orphan*/  HOST_WIDE_INT ;

/* Variables and functions */
 int /*<<< orphan*/  DEC_INIT_DECIMAL128 ; 
 int /*<<< orphan*/  DEC_ROUND_DOWN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*) ; 

void
FUNC8 (HOST_WIDE_INT *plow, HOST_WIDE_INT *phigh,
			  const REAL_VALUE_TYPE *r)
{
  decContext set;
  decNumber dn, dn2, dn3;
  REAL_VALUE_TYPE to;
  char string[256];

  FUNC0 (&set, DEC_INIT_DECIMAL128);
  set.traps = 0;
  set.round = DEC_ROUND_DOWN;
  FUNC5 ((decimal128 *) r->sig, &dn);

  FUNC2 (&dn2, &dn, &set);
  FUNC4 (&dn3);
  FUNC1 (&dn, &dn2, &dn3, &set);

  /* Conver to REAL_VALUE_TYPE and call appropriate conversion
     function.  */
  FUNC3 (&dn, string);
  FUNC6 (&to, string);
  FUNC7 (plow, phigh, &to);
}
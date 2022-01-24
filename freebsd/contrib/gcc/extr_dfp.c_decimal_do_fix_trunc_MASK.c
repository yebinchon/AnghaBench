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

/* Variables and functions */
 int /*<<< orphan*/  DEC_INIT_DECIMAL128 ; 
 int /*<<< orphan*/  DEC_ROUND_DOWN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ *,TYPE_1__*) ; 

void
FUNC4 (REAL_VALUE_TYPE *r, const REAL_VALUE_TYPE *a)
{
  decNumber dn, dn2;
  decContext set;

  FUNC0 (&set, DEC_INIT_DECIMAL128);
  set.traps = 0;
  set.round = DEC_ROUND_DOWN;
  FUNC2 ((decimal128 *) a->sig, &dn2);

  FUNC1 (&dn, &dn2, &set);
  FUNC3 (r, &dn, &set);
}
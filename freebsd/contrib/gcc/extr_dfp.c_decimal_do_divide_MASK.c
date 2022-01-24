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
struct TYPE_5__ {int status; scalar_t__ traps; } ;
typedef  TYPE_1__ decContext ;
typedef  int /*<<< orphan*/  REAL_VALUE_TYPE ;

/* Variables and functions */
 int /*<<< orphan*/  DEC_INIT_DECIMAL128 ; 
 int DEC_Inexact ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool
FUNC4 (REAL_VALUE_TYPE *r, const REAL_VALUE_TYPE *op0,
		   const REAL_VALUE_TYPE *op1)
{
  decContext set;
  decNumber dn, dn2, dn3;

  FUNC3 (op0, &dn2);
  FUNC3 (op1, &dn3);

  FUNC0 (&set, DEC_INIT_DECIMAL128);
  set.traps = 0;

  FUNC1 (&dn, &dn2, &dn3, &set);
  FUNC2 (r, &dn, &set);

  /* Return true, if inexact.  */
  return (set.status & DEC_Inexact);
}
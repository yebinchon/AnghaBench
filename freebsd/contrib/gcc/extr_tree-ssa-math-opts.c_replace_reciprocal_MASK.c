#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  use_operand_p ;
typedef  scalar_t__ tree ;
struct occurrence {scalar_t__ recip_def_stmt; scalar_t__ recip_def; } ;
typedef  TYPE_1__* basic_block ;
struct TYPE_3__ {scalar_t__ aux; } ;

/* Variables and functions */
 int /*<<< orphan*/  MULT_EXPR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 

__attribute__((used)) static inline void
FUNC7 (use_operand_p use_p)
{
  tree use_stmt = FUNC3 (use_p);
  basic_block bb = FUNC4 (use_stmt);
  struct occurrence *occ = (struct occurrence *) bb->aux;

  if (occ->recip_def && use_stmt != occ->recip_def_stmt)
    {
      FUNC2 (FUNC1 (use_stmt, 1), MULT_EXPR);
      FUNC0 (use_p, occ->recip_def);
      FUNC5 (use_stmt);
      FUNC6 (use_stmt);
    }
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
struct expr_hash_elt {scalar_t__ stmt; scalar_t__ rhs; scalar_t__ hash; } ;
struct TYPE_2__ {scalar_t__ (* types_compatible_p ) (scalar_t__,scalar_t__) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  OEP_PURE_SAME ; 
 int /*<<< orphan*/  SSA_OP_VUSE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 TYPE_1__ lang_hooks ; 
 scalar_t__ FUNC4 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static int
FUNC6 (const void *p1, const void *p2)
{
  tree stmt1 = ((struct expr_hash_elt *)p1)->stmt;
  tree rhs1 = ((struct expr_hash_elt *)p1)->rhs;
  tree stmt2 = ((struct expr_hash_elt *)p2)->stmt;
  tree rhs2 = ((struct expr_hash_elt *)p2)->rhs;

  /* If they are the same physical expression, return true.  */
  if (rhs1 == rhs2 && stmt1 == stmt2)
    return true;

  /* If their codes are not equal, then quit now.  */
  if (FUNC0 (rhs1) != FUNC0 (rhs2))
    return false;

  /* In case of a collision, both RHS have to be identical and have the
     same VUSE operands.  */
  if ((FUNC1 (rhs1) == FUNC1 (rhs2)
       || lang_hooks.types_compatible_p (FUNC1 (rhs1), FUNC1 (rhs2)))
      && FUNC4 (rhs1, rhs2, OEP_PURE_SAME))
    {
      bool ret = FUNC2 (stmt1, stmt2, SSA_OP_VUSE);
      FUNC3 (!ret || ((struct expr_hash_elt *)p1)->hash
		  == ((struct expr_hash_elt *)p2)->hash);
      return ret;
    }

  return false;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
struct TYPE_3__ {scalar_t__ (* promote_prototypes ) (int /*<<< orphan*/ ) ;} ;
struct TYPE_4__ {TYPE_1__ calls; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TYPE_QUAL_RESTRICT ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  integer_type_node ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 TYPE_2__ targetm ; 

tree
FUNC8 (tree type)
{
  /* Pass classes with copy ctors by invisible reference.  */
  if (FUNC3 (type))
    {
      type = FUNC6 (type);
      /* There are no other pointers to this temporary.  */
      type = FUNC5 (type, TYPE_QUAL_RESTRICT);
    }
  else if (targetm.calls.promote_prototypes (type)
	   && FUNC1 (type)
	   && FUNC0 (type)
	   && FUNC2 (FUNC4 (type),
				   FUNC4 (integer_type_node)))
    type = integer_type_node;

  return type;
}
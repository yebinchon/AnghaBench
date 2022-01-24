#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ tree ;

/* Variables and functions */
 scalar_t__ ENUMERAL_TYPE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 

tree
FUNC7 (tree expr)
{
  tree type;
  tree promoted_type;

  /* [conv.prom]

     If the bitfield has an enumerated type, it is treated as any
     other value of that type for promotion purposes.  */
  type = FUNC5 (expr);
  if (!type || FUNC1 (type) != ENUMERAL_TYPE)
    type = FUNC2 (expr);
  FUNC4 (FUNC0 (type));
  promoted_type = FUNC6 (type);
  if (type != promoted_type)
    expr = FUNC3 (promoted_type, expr);
  return expr;
}
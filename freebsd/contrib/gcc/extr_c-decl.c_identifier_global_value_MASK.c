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
typedef  int /*<<< orphan*/  tree ;
struct c_binding {int /*<<< orphan*/  decl; struct c_binding* shadowed; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct c_binding*) ; 
 scalar_t__ FUNC1 (struct c_binding*) ; 
 struct c_binding* FUNC2 (int /*<<< orphan*/ ) ; 

tree
FUNC3	(tree t)
{
  struct c_binding *b;

  for (b = FUNC2 (t); b; b = b->shadowed)
    if (FUNC1 (b) || FUNC0 (b))
      return b->decl;

  return 0;
}
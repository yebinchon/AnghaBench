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
struct function {TYPE_1__* expr; } ;
typedef  int /*<<< orphan*/  rtx ;
struct TYPE_2__ {int /*<<< orphan*/  x_forced_labels; } ;

/* Variables and functions */
 int /*<<< orphan*/  VOIDmode ; 
 struct function* cfun ; 
 scalar_t__ current_function_decl ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 struct function* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

rtx
FUNC5 (tree label)
{
  rtx ref = FUNC4 (label);
  tree function = FUNC0 (label);
  struct function *p;

  FUNC2 (function);

  if (function != current_function_decl)
    p = FUNC1 (function);
  else
    p = cfun;

  p->expr->x_forced_labels = FUNC3 (VOIDmode, ref,
						p->expr->x_forced_labels);
  return ref;
}
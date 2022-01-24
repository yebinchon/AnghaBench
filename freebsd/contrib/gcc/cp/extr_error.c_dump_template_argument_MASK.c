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

/* Variables and functions */
 scalar_t__ TEMPLATE_DECL ; 
 int TFF_CLASS_KEY_OR_ENUM ; 
 int TFF_EXPR_IN_PARENS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC4 (tree arg, int flags)
{
  if (FUNC1 (arg) || FUNC0 (arg) == TEMPLATE_DECL)
    FUNC3 (arg, flags & ~TFF_CLASS_KEY_OR_ENUM);
  else
    FUNC2 (arg, (flags | TFF_EXPR_IN_PARENS) & ~TFF_CLASS_KEY_OR_ENUM);
}
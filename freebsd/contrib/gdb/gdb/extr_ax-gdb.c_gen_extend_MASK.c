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
struct type {int dummy; } ;
struct agent_expr {int dummy; } ;

/* Variables and functions */
 int TARGET_CHAR_BIT ; 
 int FUNC0 (struct type*) ; 
 scalar_t__ FUNC1 (struct type*) ; 
 int /*<<< orphan*/  FUNC2 (struct agent_expr*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct agent_expr*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct agent_expr*,int) ; 

__attribute__((used)) static void
FUNC5 (struct agent_expr *ax, struct type *type)
{
  int bits = FUNC0 (type) * TARGET_CHAR_BIT;
  /* I just had to.  */
  ((FUNC1 (type) ? ax_zero_ext : ax_ext) (ax, bits));
}
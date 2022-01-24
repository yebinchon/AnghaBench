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
typedef  enum agent_op { ____Placeholder_agent_op } agent_op ;

/* Variables and functions */
 int FUNC0 (struct type*) ; 
 struct type* FUNC1 (struct type*) ; 
 int /*<<< orphan*/  FUNC2 (struct agent_expr*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct agent_expr*,int) ; 

__attribute__((used)) static void
FUNC4 (struct agent_expr *ax, enum agent_op op, struct type *type)
{
  struct type *element = FUNC1 (type);

  if (FUNC0 (element) != 1)
    {
      FUNC2 (ax, FUNC0 (element));
      FUNC3 (ax, op);
    }
}
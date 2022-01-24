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
 scalar_t__ ARRAY_REF ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ CALL_EXPR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ COMPONENT_REF ; 
 scalar_t__ INDIRECT_REF ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC4 (tree op)
{
  return FUNC3 (op)
    || FUNC0 (op)
    || FUNC1 (op)
    || FUNC2 (op) == INDIRECT_REF
    || FUNC2 (op) == COMPONENT_REF
    || FUNC2 (op) == CALL_EXPR
    || FUNC2 (op) == ARRAY_REF;
}
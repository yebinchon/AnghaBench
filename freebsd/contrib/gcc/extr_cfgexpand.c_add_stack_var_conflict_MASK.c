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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int* stack_vars_conflict ; 
 size_t stack_vars_conflict_alloc ; 
 size_t FUNC1 (size_t,size_t) ; 

__attribute__((used)) static void
FUNC2 (size_t x, size_t y)
{
  size_t index = FUNC1 (x, y);
  FUNC0 (index < stack_vars_conflict_alloc);
  stack_vars_conflict[index] = true;
}
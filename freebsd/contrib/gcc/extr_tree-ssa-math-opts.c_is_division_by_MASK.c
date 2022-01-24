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
 scalar_t__ MODIFY_EXPR ; 
 scalar_t__ RDIV_EXPR ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,int) ; 

__attribute__((used)) static inline bool
FUNC2 (tree use_stmt, tree def)
{
  return FUNC0 (use_stmt) == MODIFY_EXPR
	 && FUNC0 (FUNC1 (use_stmt, 1)) == RDIV_EXPR
	 && FUNC1 (FUNC1 (use_stmt, 1), 1) == def;
}
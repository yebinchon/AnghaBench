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
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SSA_OP_USE ; 

__attribute__((used)) static bool
FUNC1 (tree stmt, tree phi_result)
{
  tree use = FUNC0 (stmt, SSA_OP_USE);
  
  /* This is conservatively true, because we only want SIMPLE bumpers
     of the form x +- constant for our pass.  */
  return (use == phi_result);
}
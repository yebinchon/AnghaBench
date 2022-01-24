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
struct loop {int num; } ;

/* Variables and functions */
 scalar_t__ SSA_NAME ; 
 int TDF_DETAILS ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (struct loop*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ chrec_dont_know ; 
 scalar_t__ dump_file ; 
 int dump_flags ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 

tree 
FUNC5 (struct loop *loop, tree var)
{
  tree res;

  if (dump_file && (dump_flags & TDF_DETAILS))
    {
      FUNC2 (dump_file, "(analyze_scalar_evolution \n");
      FUNC2 (dump_file, "  (loop_nb = %d)\n", loop->num);
      FUNC2 (dump_file, "  (scalar = ");
      FUNC4 (dump_file, var, 0);
      FUNC2 (dump_file, ")\n");
    }

  res = FUNC1 (loop, var, FUNC3 (var));

  if (FUNC0 (var) == SSA_NAME && res == chrec_dont_know)
    res = var;

  if (dump_file && (dump_flags & TDF_DETAILS))
    FUNC2 (dump_file, ")\n");

  return res;
}
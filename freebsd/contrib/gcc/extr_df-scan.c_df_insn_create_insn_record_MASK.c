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
struct df_scan_problem_data {int /*<<< orphan*/  insn_pool; } ;
struct df_insn_info {int dummy; } ;
struct df {int dummy; } ;
struct dataflow {scalar_t__ problem_data; struct df* df; } ;
typedef  int /*<<< orphan*/  rtx ;

/* Variables and functions */
 struct df_insn_info* FUNC0 (struct df*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct df*,int /*<<< orphan*/ ,struct df_insn_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct df_insn_info*,int /*<<< orphan*/ ,int) ; 
 struct df_insn_info* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct df_insn_info *
FUNC4 (struct dataflow *dflow, rtx insn)
{
  struct df *df = dflow->df;
  struct df_scan_problem_data *problem_data
    = (struct df_scan_problem_data *) dflow->problem_data;

  struct df_insn_info *insn_rec = FUNC0 (df, insn);
  if (!insn_rec)
    {
      insn_rec = FUNC3 (problem_data->insn_pool);
      FUNC1 (df, insn, insn_rec);
    }
  FUNC2 (insn_rec, 0, sizeof (struct df_insn_info));

  return insn_rec;
}
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
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef  enum insn_code { ____Placeholder_insn_code } insn_code ;

/* Variables and functions */
 int CODE_FOR_nothing ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int* vcond_gen_code ; 
 int* vcondu_gen_code ; 

__attribute__((used)) static inline enum insn_code
FUNC2 (tree expr, enum machine_mode mode)
{
  enum insn_code icode = CODE_FOR_nothing;

  if (FUNC1 (FUNC0 (expr)))
    icode = vcondu_gen_code[mode];
  else
    icode = vcond_gen_code[mode];
  return icode;
}
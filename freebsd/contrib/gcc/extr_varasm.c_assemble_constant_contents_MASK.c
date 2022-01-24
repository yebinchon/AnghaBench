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
typedef  int /*<<< orphan*/  HOST_WIDE_INT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  asm_out_file ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void
FUNC4 (tree exp, const char *label, unsigned int align)
{
  HOST_WIDE_INT size;

  size = FUNC2 (exp);

  /* Do any machine/system dependent processing of the constant.  */
#ifdef ASM_DECLARE_CONSTANT_NAME
  ASM_DECLARE_CONSTANT_NAME (asm_out_file, label, exp, size);
#else
  /* Standard thing is just output label for the constant.  */
  FUNC1 (asm_out_file, label);
#endif /* ASM_DECLARE_CONSTANT_NAME */

  /* Output the value of EXP.  */
  FUNC3 (exp, size, align);
}
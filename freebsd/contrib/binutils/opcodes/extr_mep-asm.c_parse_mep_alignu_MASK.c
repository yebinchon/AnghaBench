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
typedef  enum cgen_operand_type { ____Placeholder_cgen_operand_type } cgen_operand_type ;
typedef  int /*<<< orphan*/  CGEN_CPU_DESC ;

/* Variables and functions */
 char const* FUNC0 (int /*<<< orphan*/ ,char const**,int,long*) ; 

const char *
FUNC1 (CGEN_CPU_DESC cd, const char ** strp,
		 enum cgen_operand_type type, unsigned long *field)
{
  return FUNC0 (cd, strp, type, (long *) field);
}
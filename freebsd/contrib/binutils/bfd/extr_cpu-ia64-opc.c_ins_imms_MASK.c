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
struct ia64_operand {int dummy; } ;
typedef  int /*<<< orphan*/  ia64_insn ;

/* Variables and functions */
 char const* FUNC0 (struct ia64_operand const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static const char*
FUNC1 (const struct ia64_operand *self, ia64_insn value, ia64_insn *code)
{
  return FUNC0 (self, value, code, 0);
}
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
struct asm_barrier_opt {int value; } ;

/* Variables and functions */
 int FAIL ; 
 scalar_t__ FUNC0 (char) ; 
 int /*<<< orphan*/  arm_barrier_opt_hsh ; 
 struct asm_barrier_opt* FUNC1 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int
FUNC2 (char **str)
{
  char *p, *q;
  const struct asm_barrier_opt *o;

  p = q = *str;
  while (FUNC0 (*q))
    q++;

  o = FUNC1 (arm_barrier_opt_hsh, p, q - p);
  if (!o)
    return FAIL;

  *str = q;
  return o->value;
}
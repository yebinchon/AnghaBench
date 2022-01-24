#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
struct TYPE_3__ {unsigned long return_value; int /*<<< orphan*/ * arg; } ;
typedef  TYPE_1__ isr_attribute_arg ;

/* Variables and functions */
 unsigned long ARM_FT_ISR ; 
 unsigned long ARM_FT_UNKNOWN ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ STRING_CST ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 char* FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 TYPE_1__* isr_attribute_args ; 
 scalar_t__ FUNC3 (char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static unsigned long
FUNC4 (tree argument)
{
  const isr_attribute_arg * ptr;
  const char *              arg;

  /* No argument - default to IRQ.  */
  if (argument == NULL_TREE)
    return ARM_FT_ISR;

  /* Get the value of the argument.  */
  if (FUNC2 (argument) == NULL_TREE
      || FUNC0 (FUNC2 (argument)) != STRING_CST)
    return ARM_FT_UNKNOWN;

  arg = FUNC1 (FUNC2 (argument));

  /* Check it against the list of known arguments.  */
  for (ptr = isr_attribute_args; ptr->arg != NULL; ptr++)
    if (FUNC3 (arg, ptr->arg))
      return ptr->return_value;

  /* An unrecognized interrupt type.  */
  return ARM_FT_UNKNOWN;
}
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
typedef  scalar_t__ rtx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current_function_decl ; 

__attribute__((used)) static int
FUNC5 (rtx sym_ref)
{
  /* This is a bit of a fib.  A function will have a short call flag
     applied to its name if it has the short call attribute, or it has
     already been defined within the current compilation unit.  */
  if (FUNC2 (FUNC4 (sym_ref, 0)))
    return 1;

  /* The current function is always defined within the current compilation
     unit.  If it s a weak definition however, then this may not be the real
     definition of the function, and so we have to say no.  */
  if (sym_ref == FUNC3 (FUNC0 (current_function_decl), 0)
      && !FUNC1 (current_function_decl))
    return 1;

  /* We cannot make the determination - default to returning 0.  */
  return 0;
}
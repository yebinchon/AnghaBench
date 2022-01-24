#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
struct TYPE_2__ {int /*<<< orphan*/ * static_chain_decl; } ;

/* Variables and functions */
 unsigned long ARM_FT_INTERWORKED ; 
 unsigned long ARM_FT_NAKED ; 
 unsigned long ARM_FT_NESTED ; 
 unsigned long ARM_FT_NORMAL ; 
 unsigned long ARM_FT_UNKNOWN ; 
 unsigned long ARM_FT_VOLATILE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNCTION_DECL ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ TARGET_INTERWORK ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  USING_SJLJ_EXCEPTIONS ; 
 unsigned long FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_1__* cfun ; 
 int /*<<< orphan*/  current_function_decl ; 
 scalar_t__ flag_exceptions ; 
 scalar_t__ flag_unwind_tables ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 scalar_t__ FUNC7 (char*,scalar_t__) ; 
 scalar_t__ optimize ; 

__attribute__((used)) static unsigned long
FUNC8 (void)
{
  unsigned long type = ARM_FT_UNKNOWN;
  tree a;
  tree attr;

  FUNC6 (FUNC1 (current_function_decl) == FUNCTION_DECL);

  /* Decide if the current function is volatile.  Such functions
     never return, and many memory cycles can be saved by not storing
     register values that will never be needed again.  This optimization
     was added to speed up context switching in a kernel application.  */
  if (optimize > 0
      && (FUNC2 (current_function_decl)
          || !(flag_unwind_tables
               || (flag_exceptions && !USING_SJLJ_EXCEPTIONS)))
      && FUNC3 (current_function_decl))
    type |= ARM_FT_VOLATILE;

  if (cfun->static_chain_decl != NULL)
    type |= ARM_FT_NESTED;

  attr = FUNC0 (current_function_decl);

  a = FUNC7 ("naked", attr);
  if (a != NULL_TREE)
    type |= ARM_FT_NAKED;

  a = FUNC7 ("isr", attr);
  if (a == NULL_TREE)
    a = FUNC7 ("interrupt", attr);

  if (a == NULL_TREE)
    type |= TARGET_INTERWORK ? ARM_FT_INTERWORKED : ARM_FT_NORMAL;
  else
    type |= FUNC5 (FUNC4 (a));

  return type;
}
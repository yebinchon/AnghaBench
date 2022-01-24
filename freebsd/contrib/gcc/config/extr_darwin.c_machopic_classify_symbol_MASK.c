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
typedef  int /*<<< orphan*/  rtx ;
typedef  enum machopic_addr_class { ____Placeholder_machopic_addr_class } machopic_addr_class ;

/* Variables and functions */
 int MACHOPIC_DEFINED_DATA ; 
 int MACHOPIC_DEFINED_FUNCTION ; 
 int MACHOPIC_UNDEFINED_DATA ; 
 int MACHOPIC_UNDEFINED_FUNCTION ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

enum machopic_addr_class
FUNC3 (rtx sym_ref)
{
  int flags;
  bool function_p;

  flags = FUNC0 (sym_ref);
  function_p = FUNC1 (sym_ref);
  if (FUNC2 (sym_ref))
    return (function_p
	    ? MACHOPIC_DEFINED_FUNCTION : MACHOPIC_DEFINED_DATA);
  else
    return (function_p
	    ? MACHOPIC_UNDEFINED_FUNCTION : MACHOPIC_UNDEFINED_DATA);
}
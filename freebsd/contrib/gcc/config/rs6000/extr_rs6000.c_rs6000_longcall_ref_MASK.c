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
typedef  int /*<<< orphan*/  rtx ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Pmode ; 
 scalar_t__ SYMBOL_REF ; 
 int /*<<< orphan*/  VOIDmode ; 
 char* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 

rtx
FUNC6 (rtx call_ref)
{
  const char *call_name;
  tree node;

  if (FUNC0 (call_ref) != SYMBOL_REF)
    return call_ref;

  /* System V adds '.' to the internal name, so skip them.  */
  call_name = FUNC2 (call_ref, 0);
  if (*call_name == '.')
    {
      while (*call_name == '.')
	call_name++;

      node = FUNC5 (call_name);
      call_ref = FUNC4 (VOIDmode, FUNC1 (node));
    }

  return FUNC3 (Pmode, call_ref);
}
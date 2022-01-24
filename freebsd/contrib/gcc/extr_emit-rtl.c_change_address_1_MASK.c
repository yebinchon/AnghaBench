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
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int VOIDmode ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (int,scalar_t__) ; 
 scalar_t__ FUNC6 (int,scalar_t__) ; 
 scalar_t__ FUNC7 (int,scalar_t__) ; 
 scalar_t__ reload_completed ; 
 scalar_t__ reload_in_progress ; 
 scalar_t__ FUNC8 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static rtx
FUNC9 (rtx memref, enum machine_mode mode, rtx addr, int validate)
{
  rtx new;

  FUNC4 (FUNC2 (memref));
  if (mode == VOIDmode)
    mode = FUNC0 (memref);
  if (addr == 0)
    addr = FUNC3 (memref, 0);
  if (mode == FUNC0 (memref) && addr == FUNC3 (memref, 0)
      && (!validate || FUNC7 (mode, addr)))
    return memref;

  if (validate)
    {
      if (reload_in_progress || reload_completed)
	FUNC4 (FUNC7 (mode, addr));
      else
	addr = FUNC6 (mode, addr);
    }

  if (FUNC8 (addr, FUNC3 (memref, 0)) && mode == FUNC0 (memref))
    return memref;

  new = FUNC5 (mode, addr);
  FUNC1 (new, memref);
  return new;
}
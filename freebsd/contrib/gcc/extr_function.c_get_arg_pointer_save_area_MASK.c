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
struct function {int /*<<< orphan*/  arg_pointer_save_area_init; scalar_t__ x_arg_pointer_save_area; } ;
typedef  scalar_t__ rtx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Pmode ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct function*) ; 
 struct function* cfun ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  virtual_incoming_args_rtx ; 

rtx
FUNC11 (struct function *f)
{
  rtx ret = f->x_arg_pointer_save_area;

  if (! ret)
    {
      ret = FUNC1 (Pmode, FUNC0 (Pmode), 0, f);
      f->x_arg_pointer_save_area = ret;
    }

  if (f == cfun && ! f->arg_pointer_save_area_init)
    {
      rtx seq;

      /* Save the arg pointer at the beginning of the function.  The
	 generated stack slot may not be a valid memory address, so we
	 have to check it and fix it if necessary.  */
      FUNC9 ();
      FUNC3 (FUNC10 (ret), virtual_incoming_args_rtx);
      seq = FUNC6 ();
      FUNC4 ();

      FUNC8 ();
      FUNC2 (seq, FUNC5 ());
      FUNC7 ();
    }

  return ret;
}
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
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
struct TYPE_2__ {scalar_t__ (* mode_rep_extended ) (int,int) ;} ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  MODE_INT ; 
 scalar_t__ SIGN_EXTEND ; 
 scalar_t__ UNKNOWN ; 
 int VOIDmode ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__** num_sign_bit_copies_in_rep ; 
 scalar_t__ FUNC4 (int,int) ; 
 scalar_t__ FUNC5 (int,int) ; 
 TYPE_1__ targetm ; 

__attribute__((used)) static void
FUNC6 (void)
{
  enum machine_mode mode, in_mode;

  for (in_mode = FUNC0 (MODE_INT); in_mode != VOIDmode;
       in_mode = FUNC2 (mode))
    for (mode = FUNC0 (MODE_INT); mode != in_mode;
	 mode = FUNC2 (mode))
      {
	enum machine_mode i;

	/* Currently, it is assumed that TARGET_MODE_REP_EXTENDED
	   extends to the next widest mode.  */
	FUNC3 (targetm.mode_rep_extended (mode, in_mode) == UNKNOWN
		    || FUNC2 (mode) == in_mode);

	/* We are in in_mode.  Count how many bits outside of mode
	   have to be copies of the sign-bit.  */
	for (i = mode; i != in_mode; i = FUNC2 (i))
	  {
	    enum machine_mode wider = FUNC2 (i);

	    if (targetm.mode_rep_extended (i, wider) == SIGN_EXTEND
		/* We can only check sign-bit copies starting from the
		   top-bit.  In order to be able to check the bits we
		   have already seen we pretend that subsequent bits
		   have to be sign-bit copies too.  */
		|| num_sign_bit_copies_in_rep [in_mode][mode])
	      num_sign_bit_copies_in_rep [in_mode][mode]
		+= FUNC1 (wider) - FUNC1 (i);
	  }
      }
}
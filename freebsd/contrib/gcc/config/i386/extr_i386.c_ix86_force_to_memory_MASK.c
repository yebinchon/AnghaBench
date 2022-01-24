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
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
#define  DImode 130 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
#define  HImode 129 
 int const Pmode ; 
 int /*<<< orphan*/  RED_ZONE_SIZE ; 
#define  SImode 128 
 scalar_t__ TARGET_64BIT ; 
 scalar_t__ TARGET_RED_ZONE ; 
 int /*<<< orphan*/  VOIDmode ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int const,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  reload_completed ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stack_pointer_rtx ; 

rtx
FUNC12 (enum machine_mode mode, rtx operand)
{
  rtx result;

  FUNC4 (reload_completed);
  if (TARGET_RED_ZONE)
    {
      result = FUNC7 (mode,
			    FUNC8 (Pmode,
					  stack_pointer_rtx,
					  FUNC0 (-RED_ZONE_SIZE)));
      FUNC3 (result, operand);
    }
  else if (!TARGET_RED_ZONE && TARGET_64BIT)
    {
      switch (mode)
	{
	case HImode:
	case SImode:
	  operand = FUNC6 (DImode, operand);
	  /* FALLTHRU */
	case DImode:
	  FUNC2 (
		      FUNC10 (VOIDmode,
				   FUNC7 (DImode,
						FUNC9 (DImode,
							stack_pointer_rtx)),
				   operand));
	  break;
	default:
	  FUNC5 ();
	}
      result = FUNC7 (mode, stack_pointer_rtx);
    }
  else
    {
      switch (mode)
	{
	case DImode:
	  {
	    rtx operands[2];
	    FUNC11 (&operand, 1, operands, operands + 1);
	    FUNC2 (
			FUNC10 (VOIDmode,
				     FUNC7 (SImode,
						  FUNC9 (Pmode,
							stack_pointer_rtx)),
				     operands[1]));
	    FUNC2 (
			FUNC10 (VOIDmode,
				     FUNC7 (SImode,
						  FUNC9 (Pmode,
							stack_pointer_rtx)),
				     operands[0]));
	  }
	  break;
	case HImode:
	  /* Store HImodes as SImodes.  */
	  operand = FUNC6 (SImode, operand);
	  /* FALLTHRU */
	case SImode:
	  FUNC2 (
		      FUNC10 (VOIDmode,
				   FUNC7 (FUNC1 (operand),
						FUNC9 (SImode,
							stack_pointer_rtx)),
				   operand));
	  break;
	default:
	  FUNC5 ();
	}
      result = FUNC7 (mode, stack_pointer_rtx);
    }
  return result;
}
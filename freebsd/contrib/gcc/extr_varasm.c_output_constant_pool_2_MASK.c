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
typedef  int /*<<< orphan*/  REAL_VALUE_TYPE ;

/* Variables and functions */
 int /*<<< orphan*/  CONST_DOUBLE ; 
 int /*<<< orphan*/  CONST_VECTOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 unsigned int FUNC7 (unsigned int,int /*<<< orphan*/ ) ; 
#define  MODE_DECIMAL_FLOAT 133 
#define  MODE_FLOAT 132 
#define  MODE_INT 131 
#define  MODE_PARTIAL_INT 130 
#define  MODE_VECTOR_FLOAT 129 
#define  MODE_VECTOR_INT 128 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 () ; 

__attribute__((used)) static void
FUNC13 (enum machine_mode mode, rtx x, unsigned int align)
{
  switch (FUNC4 (mode))
    {
    case MODE_FLOAT:
    case MODE_DECIMAL_FLOAT:
      {
	REAL_VALUE_TYPE r;

	FUNC11 (FUNC2 (x) == CONST_DOUBLE);
	FUNC8 (r, x);
	FUNC10 (r, mode, align);
	break;
      }

    case MODE_INT:
    case MODE_PARTIAL_INT:
      FUNC9 (x, FUNC6 (mode), align, 1);
      break;

    case MODE_VECTOR_FLOAT:
    case MODE_VECTOR_INT:
      {
	int i, units;
        enum machine_mode submode = FUNC5 (mode);
	unsigned int subalign = FUNC7 (align, FUNC3 (submode));

	FUNC11 (FUNC2 (x) == CONST_VECTOR);
	units = FUNC1 (x);

	for (i = 0; i < units; i++)
	  {
	    rtx elt = FUNC0 (x, i);
	    FUNC13 (submode, elt, i ? subalign : align);
	  }
      }
      break;

    default:
      FUNC12 ();
    }
}
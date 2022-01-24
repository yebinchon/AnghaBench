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
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
#define  MODE_INT 130 
#define  MODE_VECTOR_FLOAT 129 
#define  MODE_VECTOR_INT 128 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int) ; 

tree
FUNC8 (tree innertype, enum machine_mode mode)
{
  int nunits;

  switch (FUNC1 (mode))
    {
    case MODE_VECTOR_INT:
    case MODE_VECTOR_FLOAT:
      nunits = FUNC2 (mode);
      break;

    case MODE_INT:
      /* Check that there are no leftover bits.  */
      FUNC5 (FUNC0 (mode)
		  % FUNC3 (FUNC4 (innertype)) == 0);

      nunits = FUNC0 (mode)
	       / FUNC3 (FUNC4 (innertype));
      break;

    default:
      FUNC6 ();
    }

  return FUNC7 (innertype, nunits, mode);
}
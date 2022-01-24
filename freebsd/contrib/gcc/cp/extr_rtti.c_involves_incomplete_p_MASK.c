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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  OFFSET_TYPE 131 
#define  POINTER_TYPE 130 
#define  RECORD_TYPE 129 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
#define  UNION_TYPE 128 
 int FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC7 (tree type)
{
  switch (FUNC1 (type))
    {
    case POINTER_TYPE:
      return FUNC6 (FUNC2 (type));

    case OFFSET_TYPE:
    ptrmem:
      return
	(FUNC6 (FUNC5 (type))
	 || !FUNC0 (FUNC4 (type)));

    case RECORD_TYPE:
      if (FUNC3 (type))
	goto ptrmem;
      /* Fall through.  */
    case UNION_TYPE:
      if (!FUNC0 (type))
	return true;

    default:
      /* All other types do not involve incomplete class types.  */
      return false;
    }
}
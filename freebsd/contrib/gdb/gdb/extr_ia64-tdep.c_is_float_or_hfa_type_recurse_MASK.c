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
struct type {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct type*) ; 
#define  TYPE_CODE_ARRAY 130 
#define  TYPE_CODE_FLT 129 
#define  TYPE_CODE_STRUCT 128 
 int /*<<< orphan*/  FUNC1 (struct type*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct type*) ; 
 int FUNC3 (struct type*) ; 
 int /*<<< orphan*/  FUNC4 (struct type*) ; 
 struct type* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6 (struct type *t, struct type **etp)
{
  switch (FUNC0 (t))
    {
    case TYPE_CODE_FLT:
      if (*etp)
	return FUNC2 (*etp) == FUNC2 (t);
      else
	{
	  *etp = t;
	  return 1;
	}
      break;
    case TYPE_CODE_ARRAY:
      return
	FUNC6 (FUNC5 (FUNC4 (t)),
				      etp);
      break;
    case TYPE_CODE_STRUCT:
      {
	int i;

	for (i = 0; i < FUNC3 (t); i++)
	  if (!FUNC6
	      (FUNC5 (FUNC1 (t, i)), etp))
	    return 0;
	return 1;
      }
      break;
    default:
      return 0;
      break;
    }
}
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
typedef  scalar_t__ rtx ;
struct TYPE_2__ {unsigned int regno_to_find; void* retval; } ;
typedef  TYPE_1__ find_regno_partial_param ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 scalar_t__ NULL_RTX ; 
 unsigned int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
#define  SIGN_EXTRACT 131 
#define  STRICT_LOW_PART 130 
#define  SUBREG 129 
 void* FUNC3 (scalar_t__) ; 
 void* FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
#define  ZERO_EXTRACT 128 

__attribute__((used)) static int
FUNC5 (rtx *ptr, void *data)
{
  find_regno_partial_param *param = (find_regno_partial_param *)data;
  unsigned reg = param->regno_to_find;
  param->retval = NULL_RTX;

  if (*ptr == NULL_RTX)
    return 0;

  switch (FUNC0 (*ptr))
    {
    case ZERO_EXTRACT:
    case SIGN_EXTRACT:
    case STRICT_LOW_PART:
      if (FUNC2 (FUNC4 (*ptr, 0)) && FUNC1 (FUNC4 (*ptr, 0)) == reg)
	{
	  param->retval = FUNC4 (*ptr, 0);
	  return 1;
	}
      break;

    case SUBREG:
      if (FUNC2 (FUNC3 (*ptr))
	  && FUNC1 (FUNC3 (*ptr)) == reg)
	{
	  param->retval = FUNC3 (*ptr);
	  return 1;
	}
      break;

    default:
      break;
    }

  return 0;
}
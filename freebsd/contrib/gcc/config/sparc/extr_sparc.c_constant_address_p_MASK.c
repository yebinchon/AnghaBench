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

/* Variables and functions */
#define  CONST 132 
#define  CONST_INT 131 
 int FUNC0 (int /*<<< orphan*/ ) ; 
#define  HIGH 130 
#define  LABEL_REF 129 
#define  SYMBOL_REF 128 
 int /*<<< orphan*/  flag_pic ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

bool
FUNC3 (rtx x)
{
  switch (FUNC0 (x))
    {
    case LABEL_REF:
    case CONST_INT:
    case HIGH:
      return true;

    case CONST:
      if (flag_pic && FUNC2 (x))
	return false;
      return FUNC1 (x);

    case SYMBOL_REF:
      return !flag_pic && FUNC1 (x);

    default:
      return false;
    }
}
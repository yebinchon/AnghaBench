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
struct TYPE_2__ {int /*<<< orphan*/ * operand; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MINUS ; 
 int /*<<< orphan*/  SYMBOL_REF ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int flag_pic ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  global_offset_table ; 
 TYPE_1__ recog_data ; 

int
FUNC3 (int i)
{
  switch (flag_pic)
    {
    case 1:
      FUNC2 (FUNC0 (recog_data.operand[i]) != SYMBOL_REF
	  	  && (FUNC0 (recog_data.operand[i]) != CONST
	          || (FUNC0 (FUNC1 (recog_data.operand[i], 0)) == MINUS
		      && (FUNC1 (FUNC1 (recog_data.operand[i], 0), 0)
			  == global_offset_table)
		      && (FUNC0 (FUNC1 (FUNC1 (recog_data.operand[i], 0), 1))
			  == CONST))));
    case 2:
    default:
      return 1;
    }
}
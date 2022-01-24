#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
struct TYPE_3__ {int /*<<< orphan*/  c89name; int /*<<< orphan*/  realname; } ;

/* Variables and functions */
 size_t FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* c89_mathlib_name_list ; 
 scalar_t__ flag_iso ; 
 int /*<<< orphan*/  flag_isoc94 ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5 (tree func)
{
  size_t i;

  if (!flag_isoc94 && flag_iso)
    {
	for (i = 0; i < FUNC0 (c89_mathlib_name_list); i++)
	  {
	    if (!FUNC4(c89_mathlib_name_list[i].realname,
			FUNC1 (func)))
	      {
		FUNC2(func,
			FUNC3(c89_mathlib_name_list[i].c89name));
	      }
	  }
    }
}
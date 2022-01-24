#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_8__ ;
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct regexp {int dummy; } ;
typedef  TYPE_1__* regexp_t ;
typedef  scalar_t__ pos_t ;
struct TYPE_12__ {int repeat_num; TYPE_1__* regexp; } ;
struct TYPE_11__ {int regexps_num; int /*<<< orphan*/ * regexps; } ;
struct TYPE_10__ {scalar_t__ mode; scalar_t__ pos; } ;

/* Variables and functions */
 TYPE_8__* FUNC0 (TYPE_1__*) ; 
 TYPE_6__* FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int regexp_transformed_p ; 
 scalar_t__ rm_repeat ; 
 scalar_t__ rm_sequence ; 

__attribute__((used)) static regexp_t
FUNC5 (regexp_t regexp)
{
  int i;
  int repeat_num;
  regexp_t operand;
  pos_t pos;

  if (regexp->mode == rm_repeat)
    {
      repeat_num = FUNC0 (regexp)->repeat_num;
      FUNC4 (repeat_num > 1);
      operand = FUNC0 (regexp)->regexp;
      pos = regexp->mode;
      regexp = FUNC3 (sizeof (struct regexp) + sizeof (regexp_t)
			    * (repeat_num - 1));
      regexp->mode = rm_sequence;
      regexp->pos = pos;
      FUNC1 (regexp)->regexps_num = repeat_num;
      for (i = 0; i < repeat_num; i++)
	FUNC1 (regexp)->regexps [i] = FUNC2 (operand);
      regexp_transformed_p = 1;
    }
  return regexp;
}
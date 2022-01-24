#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  X_add_symbol; } ;
struct TYPE_4__ {TYPE_3__ exp; } ;
struct TYPE_5__ {int bwarn; TYPE_1__ reloc; } ;

/* Variables and functions */
 scalar_t__ FAIL ; 
 int MAX_LITERAL_POOL_SIZE ; 
 scalar_t__ NO_PIC ; 
 int /*<<< orphan*/  REG_TYPE_SCORE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  _SIMM16_LA ; 
 int /*<<< orphan*/  _VALUE_HI16 ; 
 int FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,TYPE_3__) ; 
 int FUNC4 (char**,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (char*) ; 
 TYPE_2__ inst ; 
 int FUNC6 (char**,int,int /*<<< orphan*/ ) ; 
 scalar_t__ score_pic ; 
 int FUNC7 (char**) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,int,char*) ; 

__attribute__((used)) static void
FUNC10 (char *str)
{
  int reg_rd;

  FUNC8 (str);
  if ((reg_rd = FUNC6 (&str, 20, REG_TYPE_SCORE)) == (int) FAIL
      || FUNC7 (&str) == (int) FAIL)
    {
      return;
    }
  else
    {
      char append_str[MAX_LITERAL_POOL_SIZE];
      char *keep_data = str;

      /* la rd, simm16.  */
      if (FUNC4 (&str, 1, _SIMM16_LA) != (int) FAIL)
        {
          FUNC5 (str);
          return;
        }
      /* la rd, imm32 or la rd, label.  */
      else
        {
          FUNC0 (NULL);
          str = keep_data;
          if ((FUNC4 (&str, 1, _VALUE_HI16) == (int) FAIL)
              || (FUNC5 (str) == (int) FAIL))
            {
              return;
            }
          else
            {
              if ((score_pic == NO_PIC) || (!inst.reloc.exp.X_add_symbol))
                {
                  FUNC9 (append_str, "ld_i32hi r%d, %s", reg_rd, keep_data);
                  if (FUNC1 (append_str, TRUE) == (int) FAIL)
		    return;

                  FUNC9 (append_str, "ld_i32lo r%d, %s", reg_rd, keep_data);
                  if (FUNC1 (append_str, TRUE) == (int) FAIL)
		    return;
		}
	      else
		{
		  FUNC2 (inst.reloc.exp.X_add_symbol);
		  FUNC3 (reg_rd, inst.reloc.exp);
		}

              /* Set bwarn as -1, so macro instruction itself will not be generated frag.  */
              inst.bwarn = -1;
            }
        }
    }
}
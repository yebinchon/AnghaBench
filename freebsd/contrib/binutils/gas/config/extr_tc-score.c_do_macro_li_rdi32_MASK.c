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
struct TYPE_4__ {scalar_t__ X_add_symbol; } ;
struct TYPE_5__ {TYPE_1__ exp; } ;
struct TYPE_6__ {int bwarn; int /*<<< orphan*/  error; TYPE_2__ reloc; } ;

/* Variables and functions */
 scalar_t__ FAIL ; 
 int MAX_LITERAL_POOL_SIZE ; 
 int /*<<< orphan*/  REG_TYPE_SCORE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  _SIMM16_LA ; 
 int /*<<< orphan*/  _VALUE_HI16 ; 
 int FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (char**,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (char*) ; 
 TYPE_3__ inst ; 
 int FUNC4 (char**,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (char**) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int,char*) ; 

__attribute__((used)) static void
FUNC8 (char *str){

  int reg_rd;

  FUNC6 (str);
  if ((reg_rd = FUNC4 (&str, 20, REG_TYPE_SCORE)) == (int) FAIL
      || FUNC5 (&str) == (int) FAIL)
    {
      return;
    }
  else
    {
      char *keep_data = str;

      /* li rd, simm16.  */
      if (FUNC2 (&str, 1, _SIMM16_LA) != (int) FAIL)
        {
          FUNC3 (str);
          return;
        }
      /* li rd, imm32.  */
      else
        {
          char append_str[MAX_LITERAL_POOL_SIZE];

          str = keep_data;

          if ((FUNC2 (&str, 1, _VALUE_HI16) == (int) FAIL)
              || (FUNC3 (str) == (int) FAIL))
            {
              return;
            }
          else if (inst.reloc.exp.X_add_symbol)
            {
              inst.error = FUNC0("li rd label isn't correct instruction form");
              return;
            }
          else
            {
              FUNC7 (append_str, "ld_i32hi r%d, %s", reg_rd, keep_data);

              if (FUNC1 (append_str, TRUE) == (int) FAIL)
		return;
              else
                {
                  FUNC7 (append_str, "ld_i32lo r%d, %s", reg_rd, keep_data);
                  if (FUNC1 (append_str, TRUE) == (int) FAIL)
		    return;

                  /* Set bwarn as -1, so macro instruction itself will not be generated frag.  */
                  inst.bwarn = -1;
                }
            }
        }
    }
}
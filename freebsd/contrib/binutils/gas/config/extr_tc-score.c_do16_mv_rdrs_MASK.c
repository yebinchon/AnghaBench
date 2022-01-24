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
struct TYPE_2__ {int relax_inst; int instruction; int relax_size; int bwarn; } ;

/* Variables and functions */
 int /*<<< orphan*/  BAD_ARGS ; 
 scalar_t__ FAIL ; 
 int MAX_LITERAL_POOL_SIZE ; 
 int /*<<< orphan*/  REG_TYPE_SCORE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (char*) ; 
 TYPE_1__ inst ; 
 int FUNC3 (char**,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (char**) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,char*) ; 

__attribute__((used)) static void
FUNC7 (char *str)
{
  int reg_rd;
  int reg_rs;
  char *backupstr = NULL;

  backupstr = str;
  FUNC5 (str);

  if ((reg_rd = FUNC3 (&str, 8, REG_TYPE_SCORE)) == (int) FAIL
      || FUNC4 (&str) == (int) FAIL
      || (reg_rs = FUNC3 (&str, 4, REG_TYPE_SCORE)) == (int) FAIL
      || FUNC2 (str) == (int) FAIL)
    {
      return;
    }
  else
    {
      /* Case 1 : mv! or mlfh!.  */
      if (reg_rd < 16)
        {
          if (reg_rs < 16)
            {
              inst.relax_inst |= (((inst.instruction >> 8) & 0xf) << 20)
                | (((inst.instruction >> 4) & 0xf) << 15) | (0xf << 10);
              inst.relax_size = 4;
            }
          else
            {
              char append_str[MAX_LITERAL_POOL_SIZE];

              FUNC6 (append_str, "mlfh! %s", backupstr);
              if (FUNC1 (append_str, TRUE) == (int) FAIL)
		return;
              /* Set bwarn as -1, so macro instruction itself will not be generated frag.  */
              inst.bwarn = -1;
            }
        }
      /* Case 2 : mhfl!.  */
      else
        {
          if (reg_rs > 16)
            {
              FUNC0 (BAD_ARGS);
              return;
            }
          else
            {
              char append_str[MAX_LITERAL_POOL_SIZE];

              FUNC6 (append_str, "mhfl! %s", backupstr);
              if (FUNC1 (append_str, TRUE) == (int) FAIL)
		return;

              /* Set bwarn as -1, so macro instruction itself will not be generated frag.  */
              inst.bwarn = -1;
            }
        }
    }
}
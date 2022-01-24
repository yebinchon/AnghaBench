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
struct TYPE_2__ {char* name; int bwarn; int /*<<< orphan*/ * error; } ;

/* Variables and functions */
 int /*<<< orphan*/ * BAD_ARGS ; 
 int /*<<< orphan*/  ERR_FOR_SCORE5U_MUL_DIV ; 
 scalar_t__ FAIL ; 
 int MAX_LITERAL_POOL_SIZE ; 
 int /*<<< orphan*/  REG_TYPE_SCORE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRUE ; 
 int FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (char*) ; 
 TYPE_1__ inst ; 
 int FUNC5 (char**,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (char**) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,...) ; 
 scalar_t__ FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 
 int university_version ; 

__attribute__((used)) static void
FUNC11 (char *str)
{
  int reg_rd;
  int reg_rs1;
  int reg_rs2;
  char *backupstr;
  char append_str[MAX_LITERAL_POOL_SIZE];

  if (university_version == 1)
    FUNC2 ("%s", ERR_FOR_SCORE5U_MUL_DIV);

  FUNC10 (append_str, str);
  backupstr = append_str;
  FUNC7 (backupstr);
  if (((reg_rd = FUNC5 (&backupstr, -1, REG_TYPE_SCORE)) == (int) FAIL)
      || (FUNC6 (&backupstr) == (int) FAIL)
      || ((reg_rs1 = FUNC5 (&backupstr, -1, REG_TYPE_SCORE)) == (int) FAIL))
    {
      inst.error = BAD_ARGS;
      return;
    }

  if (FUNC6 (&backupstr) == (int) FAIL)
    {
      /* rem/remu rA, rB is error format.  */
      if (FUNC9 (inst.name, "rem") == 0 || FUNC9 (inst.name, "remu") == 0)
        {
          FUNC0 (BAD_ARGS);
        }
      else
        {
          FUNC0 (NULL);
          FUNC3 (str);
        }
      return;
    }
  else
    {
      FUNC0 (NULL);
      if (((reg_rs2 = FUNC5 (&backupstr, -1, REG_TYPE_SCORE)) == (int) FAIL)
          || (FUNC4 (backupstr) == (int) FAIL))
        {
          return;
        }
      else
        {
          char append_str1[MAX_LITERAL_POOL_SIZE];

          if (FUNC9 (inst.name, "rem") == 0)
            {
              FUNC8 (append_str, "mul r%d, r%d", reg_rs1, reg_rs2);
              FUNC8 (append_str1, "mfceh  r%d", reg_rd);
            }
          else if (FUNC9 (inst.name, "remu") == 0)
            {
              FUNC8 (append_str, "mulu r%d, r%d", reg_rs1, reg_rs2);
              FUNC8 (append_str1, "mfceh  r%d", reg_rd);
            }
          else
            {
              FUNC8 (append_str, "%s r%d, r%d", inst.name, reg_rs1, reg_rs2);
              FUNC8 (append_str1, "mfcel  r%d", reg_rd);
            }

          /* Output mul/mulu or div/divu or rem/remu.  */
          if (FUNC1 (append_str, TRUE) == (int) FAIL)
	    return;

          /* Output mfcel or mfceh.  */
          if (FUNC1 (append_str1, TRUE) == (int) FAIL)
	    return;

          /* Set bwarn as -1, so macro instruction itself will not be generated frag.  */
          inst.bwarn = -1;
        }
    }
}
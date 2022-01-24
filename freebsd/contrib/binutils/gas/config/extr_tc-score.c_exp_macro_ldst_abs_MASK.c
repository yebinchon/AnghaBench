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
struct score_it {int dummy; } ;

/* Variables and functions */
 scalar_t__ FAIL ; 
 int MAX_LITERAL_POOL_SIZE ; 
 int /*<<< orphan*/  REG_TYPE_SCORE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct score_it inst ; 
 int /*<<< orphan*/  FUNC2 (struct score_it*,struct score_it*,int) ; 
 int nor1 ; 
 int FUNC3 (char**,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (char**) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 

__attribute__((used)) static void
FUNC8 (char *str)
{
  int reg_rd;
  char *backupstr, *tmp;
  char append_str[MAX_LITERAL_POOL_SIZE];
  char verifystr[MAX_LITERAL_POOL_SIZE];
  struct score_it inst_backup;
  int r1_bak = 0;

  r1_bak = nor1;
  nor1 = 0;
  FUNC2 (&inst_backup, &inst, sizeof (struct score_it));

  FUNC7 (verifystr, str);
  backupstr = verifystr;
  FUNC5 (backupstr);
  if ((reg_rd = FUNC3 (&backupstr, -1, REG_TYPE_SCORE)) == (int) FAIL)
    return;

  tmp = backupstr;
  if (FUNC4 (&backupstr) == (int) FAIL)
    return;

  backupstr = tmp;
  FUNC6 (append_str, "li r1  %s", backupstr);
  FUNC0 (append_str, TRUE);

  FUNC2 (&inst, &inst_backup, sizeof (struct score_it));
  FUNC6 (append_str, " r%d, [r1,0]", reg_rd);
  FUNC1 (append_str);

  nor1 = r1_bak;
}
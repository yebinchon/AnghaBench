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
struct df {int dummy; } ;
typedef  int /*<<< orphan*/  rtx ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int FUNC0 (struct df*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct df*,unsigned int) ; 
 scalar_t__ FUNC2 (struct df*,unsigned int) ; 
 int FUNC3 (scalar_t__) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct df*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,...) ; 

void
FUNC7 (struct df *df, rtx insn, FILE *file)
{
  unsigned int uid;
  int bbi;

  uid = FUNC4 (insn);
  if (FUNC1 (df, uid))
    bbi = FUNC3 (FUNC1 (df, uid));
  else if (FUNC2(df, uid))
    bbi = FUNC3 (FUNC2 (df, uid));
  else
    bbi = -1;

  FUNC6 (file, "insn %d bb %d luid %d defs ",
	   uid, bbi, FUNC0 (df, insn));
  FUNC5 (df, FUNC1 (df, uid), file);
    
  FUNC6 (file, " uses ");
  FUNC5 (df, FUNC2 (df, uid), file);
  FUNC6 (file, "\n");
}
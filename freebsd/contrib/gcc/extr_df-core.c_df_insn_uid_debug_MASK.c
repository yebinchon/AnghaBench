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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct df*,unsigned int) ; 
 int FUNC1 (struct df*,unsigned int) ; 
 scalar_t__ FUNC2 (struct df*,unsigned int) ; 
 scalar_t__ FUNC3 (struct df*,unsigned int) ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,...) ; 

__attribute__((used)) static void 
FUNC8 (struct df *df, unsigned int uid, 
		   bool follow_chain, FILE *file)
{
  int bbi;

  if (FUNC0 (df, uid))
    bbi = FUNC4 (FUNC0 (df, uid));
  else if (FUNC3(df, uid))
    bbi = FUNC4 (FUNC3 (df, uid));
  else
    bbi = -1;

  FUNC7 (file, "insn %d bb %d luid %d",
	   uid, bbi, FUNC1 (df, uid));

  if (FUNC0 (df, uid))
    {
      FUNC7 (file, " defs ");
      FUNC6 (FUNC0 (df, uid), follow_chain, file);
    }

  if (FUNC3 (df, uid))
    {
      FUNC7 (file, " uses ");
      FUNC6 (FUNC3 (df, uid), follow_chain, file);
    }

  if (FUNC2 (df, uid))
    {
      FUNC7 (file, " mws ");
      FUNC5 (FUNC2 (df, uid), file);
    }
  FUNC7 (file, "\n");
}
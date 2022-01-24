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
typedef  int /*<<< orphan*/  rtx ;

/* Variables and functions */
#define  ADDR_DIFF_VEC 141 
#define  ADDR_VEC 140 
#define  ASM_INPUT 139 
 int BUF_LEN ; 
#define  CALL 138 
#define  CLOBBER 137 
#define  COND_EXEC 136 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int EQ ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int NE ; 
#define  PARALLEL 135 
#define  RETURN 134 
#define  SEQUENCE 133 
#define  SET 132 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
#define  TRAP_IF 131 
#define  UNSPEC 130 
#define  UNSPEC_VOLATILE 129 
#define  USE 128 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 char* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  const0_rtx ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*) ; 

__attribute__((used)) static void
FUNC15 (char *buf, rtx x, int verbose)
{
  char t1[BUF_LEN], t2[BUF_LEN], t3[BUF_LEN];

  switch (FUNC2 (x))
    {
    case SET:
      FUNC12 (t1, FUNC3 (x), verbose);
      FUNC12 (t2, FUNC4 (x), verbose);
      FUNC13 (buf, "%s=%s", t1, t2);
      break;
    case RETURN:
      FUNC13 (buf, "return");
      break;
    case CALL:
      FUNC11 (buf, x, verbose);
      break;
    case CLOBBER:
      FUNC12 (t1, FUNC6 (x, 0), verbose);
      FUNC13 (buf, "clobber %s", t1);
      break;
    case USE:
      FUNC12 (t1, FUNC6 (x, 0), verbose);
      FUNC13 (buf, "use %s", t1);
      break;
    case COND_EXEC:
      if (FUNC2 (FUNC1 (x)) == NE
	  && FUNC6 (FUNC1 (x), 1) == const0_rtx)
	FUNC12 (t1, FUNC6 (FUNC1 (x), 0), verbose);
      else if (FUNC2 (FUNC1 (x)) == EQ
	       && FUNC6 (FUNC1 (x), 1) == const0_rtx)
	{
	  t1[0] = '!';
	  FUNC12 (t1 + 1, FUNC6 (FUNC1 (x), 0), verbose);
	}
      else
	FUNC12 (t1, FUNC1 (x), verbose);
      FUNC15 (t2, FUNC0 (x), verbose);
      FUNC13 (buf, "(%s) %s", t1, t2);
      break;
    case PARALLEL:
      {
	int i;

	FUNC13 (t1, "{");
	for (i = 0; i < FUNC9 (x, 0); i++)
	  {
	    FUNC15 (t2, FUNC8 (x, 0, i), verbose);
	    FUNC13 (t3, "%s%s;", t1, t2);
	    FUNC14 (t1, t3);
	  }
	FUNC13 (buf, "%s}", t1);
      }
      break;
    case SEQUENCE:
      /* Should never see SEQUENCE codes until after reorg.  */
      FUNC10 ();
    case ASM_INPUT:
      FUNC13 (buf, "asm {%s}", FUNC7 (x, 0));
      break;
    case ADDR_VEC:
      break;
    case ADDR_DIFF_VEC:
      FUNC12 (buf, FUNC6 (x, 0), verbose);
      break;
    case TRAP_IF:
      FUNC12 (t1, FUNC5 (x), verbose);
      FUNC13 (buf, "trap_if %s", t1);
      break;
    case UNSPEC:
      {
	int i;

	FUNC13 (t1, "unspec{");
	for (i = 0; i < FUNC9 (x, 0); i++)
	  {
	    FUNC15 (t2, FUNC8 (x, 0, i), verbose);
	    FUNC13 (t3, "%s%s;", t1, t2);
	    FUNC14 (t1, t3);
	  }
	FUNC13 (buf, "%s}", t1);
      }
      break;
    case UNSPEC_VOLATILE:
      {
	int i;

	FUNC13 (t1, "unspec/v{");
	for (i = 0; i < FUNC9 (x, 0); i++)
	  {
	    FUNC15 (t2, FUNC8 (x, 0, i), verbose);
	    FUNC13 (t3, "%s%s;", t1, t2);
	    FUNC14 (t1, t3);
	  }
	FUNC13 (buf, "%s}", t1);
      }
      break;
    default:
      FUNC12 (buf, x, verbose);
    }
}
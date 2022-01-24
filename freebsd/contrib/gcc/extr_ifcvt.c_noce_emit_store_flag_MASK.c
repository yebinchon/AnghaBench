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
struct noce_if_info {int /*<<< orphan*/  jump; int /*<<< orphan*/  cond_earliest; int /*<<< orphan*/  cond; } ;
typedef  int /*<<< orphan*/  rtx ;
typedef  enum rtx_code { ____Placeholder_rtx_code } rtx_code ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int GEU ; 
 int GTU ; 
 int LEU ; 
 int LTU ; 
 int /*<<< orphan*/  NULL_RTX ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int STORE_FLAG_VALUE ; 
 int /*<<< orphan*/  VOIDmode ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 () ; 

__attribute__((used)) static rtx
FUNC16 (struct noce_if_info *if_info, rtx x, int reversep,
		      int normalize)
{
  rtx cond = if_info->cond;
  int cond_complex;
  enum rtx_code code;

  cond_complex = (! FUNC10 (FUNC4 (cond, 0), VOIDmode)
		  || ! FUNC10 (FUNC4 (cond, 1), VOIDmode));

  /* If earliest == jump, or when the condition is complex, try to
     build the store_flag insn directly.  */

  if (cond_complex)
    cond = FUNC4 (FUNC3 (FUNC12 (if_info->jump)), 0);

  if (reversep)
    code = FUNC14 (cond, if_info->jump);
  else
    code = FUNC0 (cond);

  if ((if_info->cond_earliest == if_info->jump || cond_complex)
      && (normalize == 0 || STORE_FLAG_VALUE == normalize))
    {
      rtx tmp;

      tmp = FUNC9 (code, FUNC1 (x), FUNC4 (cond, 0),
			    FUNC4 (cond, 1));
      tmp = FUNC8 (VOIDmode, x, tmp);

      FUNC15 ();
      tmp = FUNC5 (tmp);

      if (FUNC13 (tmp) >= 0)
	{
	  tmp = FUNC11 ();
	  FUNC7 ();
	  FUNC5 (tmp);

	  if_info->cond_earliest = if_info->jump;

	  return x;
	}

      FUNC7 ();
    }

  /* Don't even try if the comparison operands or the mode of X are weird.  */
  if (cond_complex || !FUNC2 (FUNC1 (x)))
    return NULL_RTX;

  return FUNC6 (x, code, FUNC4 (cond, 0),
			  FUNC4 (cond, 1), VOIDmode,
			  (code == LTU || code == LEU
			   || code == GEU || code == GTU), normalize);
}
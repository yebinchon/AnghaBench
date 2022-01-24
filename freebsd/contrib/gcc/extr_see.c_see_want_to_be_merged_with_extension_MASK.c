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
struct see_mentioned_reg_data {int mentioned; int /*<<< orphan*/  reg; } ;
typedef  int /*<<< orphan*/  rtx ;
typedef  enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef  enum extension_type { ____Placeholder_extension_type } extension_type ;

/* Variables and functions */
 int DEF_EXTENSION ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int PARALLEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ SET ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ SUBREG ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int USE_EXTENSION ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct see_mentioned_reg_data*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  see_mentioned_reg ; 

__attribute__((used)) static bool
FUNC11 (rtx ref, rtx extension,
   				      enum extension_type type)
{
  rtx pat;
  rtx dest_extension_reg = FUNC10 (extension, 1);
  rtx source_extension_reg = FUNC10 (extension, 0);
  enum rtx_code code;
  struct see_mentioned_reg_data d;
  int i;

  pat = FUNC1 (ref);
  code = FUNC0 (pat);

  if (code == PARALLEL)
    {
      for (i = 0; i < FUNC7 (pat, 0); i++)
	{
	  rtx sub = FUNC6 (pat, 0, i);

	  if (FUNC0 (sub) == SET
	      && (FUNC2 (FUNC3 (sub))
		  || (FUNC0 (FUNC3 (sub)) == SUBREG
		      && FUNC2 (FUNC5 (FUNC3 (sub)))))
	      && (FUNC2 (FUNC4 (sub))
		  || (FUNC0 (FUNC4 (sub)) == SUBREG
		      && FUNC2 (FUNC5 (FUNC4 (sub))))))
	    {
	      /* This is a simple move SET.  */
	      if (type == DEF_EXTENSION
		  && FUNC9 (source_extension_reg, FUNC3 (sub)))
		return false;
	    }
	  else
	    {
	      /* This is not a simple move SET.
		 Check if it uses the source of the extension.  */
	      if (type == USE_EXTENSION)
		{
  		  d.reg = dest_extension_reg;
		  d.mentioned = false;
		  FUNC8 (&sub, see_mentioned_reg, &d);
		  if (d.mentioned)
		    return true;
		}
	    }
	}
      if (type == USE_EXTENSION)
	return false;
    }
  else
    {
      if (code == SET
	  && (FUNC2 (FUNC3 (pat))
	      || (FUNC0 (FUNC3 (pat)) == SUBREG
		  && FUNC2 (FUNC5 (FUNC3 (pat)))))
	  && (FUNC2 (FUNC4 (pat))
	      || (FUNC0 (FUNC4 (pat)) == SUBREG
		  && FUNC2 (FUNC5 (FUNC4 (pat))))))
	/* This is a simple move SET.  */
	return false;
     }

  return true;
}
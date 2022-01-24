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
typedef  enum tree_code { ____Placeholder_tree_code } tree_code ;

/* Variables and functions */
 unsigned int LAST_AND_UNUSED_TREE_CODE ; 
 int /*<<< orphan*/  TB_OUT_FILE ; 
 int FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (unsigned int) ; 
 char* FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC4 (char*,char*,unsigned int) ; 
 char* FUNC5 (char*,char) ; 
 unsigned int FUNC6 (char*) ; 

__attribute__((used)) static enum tree_code
FUNC7 (char *input)
{
  unsigned int mn, size_tok;
  int comp;
  char *space;

  space = FUNC5 (input, ' ');
  if (space != NULL)
    size_tok = FUNC6 (input) - FUNC6 (space);
  else
    size_tok = FUNC6 (input) - 1;

  for (mn = 0; mn < LAST_AND_UNUSED_TREE_CODE; mn++)
    {
      if (size_tok != FUNC1 (mn))
	continue;

      comp = FUNC4 (input, FUNC2 (mn), FUNC1 (mn));
      if (comp == 0)
	{
	  FUNC3 (TB_OUT_FILE, "%s\n", FUNC2 (mn));
	  return FUNC0 (mn);
	}
    }

  /* This isn't a valid code.  */
  return LAST_AND_UNUSED_TREE_CODE;
}
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
typedef  scalar_t__ tree ;

/* Variables and functions */
 unsigned int BITS_PER_WORD ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ NULL_TREE ; 
 unsigned int PARM_BOUNDARY ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 char* FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 scalar_t__ FUNC11 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*,unsigned int,char const*) ; 
 scalar_t__ FUNC13 (char const*) ; 
 scalar_t__ FUNC14 (scalar_t__) ; 
 scalar_t__ void_type_node ; 

__attribute__((used)) static tree
FUNC15 (tree decl, unsigned nregs)
{
  unsigned total = 0;
  /* ??? This probably should use XSTR (XEXP (DECL_RTL (decl), 0), 0) instead
     of DECL_ASSEMBLER_NAME.  */
  const char *asmname = FUNC2 (FUNC1 (decl));
  char *newsym;
  tree formal_type = FUNC7 (FUNC5 (decl));

  if (formal_type != NULL_TREE)
    {
      /* This attribute is ignored for variadic functions.  */ 
      if (FUNC6 (FUNC14 (formal_type)) != void_type_node)
	return NULL_TREE;

      /* Quit if we hit an incomplete type.  Error is reported
	 by convert_arguments in c-typeck.c or cp/typeck.c.  */
      while (FUNC6 (formal_type) != void_type_node
	     && FUNC0 (FUNC6 (formal_type)))	
	{
	  unsigned parm_size
	    = FUNC4 (FUNC8 (FUNC6 (formal_type)));

	  /* Must round up to include padding.  This is done the same
	     way as in store_one_arg.  */
	  parm_size = ((parm_size + PARM_BOUNDARY - 1)
		       / PARM_BOUNDARY * PARM_BOUNDARY);
	  total += parm_size;
	  formal_type = FUNC3 (formal_type);
	}
    }

  if (nregs > total / BITS_PER_WORD)
    nregs = total / BITS_PER_WORD;
  FUNC10 (nregs <= 9);
  newsym = FUNC9 (3 + FUNC13 (asmname) + 1);
  return FUNC11 (newsym,
				     FUNC12 (newsym,
					      "_%u@%s",
					      nregs,
					      asmname));
}
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
 int BITS_PER_UNIT ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FASTCALL_PREFIX ; 
 char* FUNC2 (scalar_t__) ; 
 scalar_t__ NULL_TREE ; 
 int PARM_BOUNDARY ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 char* FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,char const*,int) ; 
 scalar_t__ FUNC12 (char const*,char) ; 
 scalar_t__ FUNC13 (char const*) ; 
 scalar_t__ FUNC14 (scalar_t__) ; 
 scalar_t__ void_type_node ; 

__attribute__((used)) static tree
FUNC15 (tree decl, bool fastcall)
{
  int total = 0;
  /* ??? This probably should use XSTR (XEXP (DECL_RTL (decl), 0), 0) instead
     of DECL_ASSEMBLER_NAME.  */
   const char *asmname =  FUNC2 (FUNC1 (decl));
  char *newsym;
  char *p;
  tree formal_type;

  /* Do not change the identifier if a verbatim asmspec or already done. */
  if (*asmname == '*' || FUNC12 (asmname, '@'))
    return FUNC1 (decl);

  formal_type = FUNC7 (FUNC5 (decl));
  if (formal_type != NULL_TREE)
    {
      /* These attributes are ignored for variadic functions in
	 i386.c:ix86_return_pops_args. For compatibility with MS
         compiler do not add @0 suffix here.  */ 
      if (FUNC6 (FUNC14 (formal_type)) != void_type_node)
        return FUNC1 (decl);

      /* Quit if we hit an incomplete type.  Error is reported
         by convert_arguments in c-typeck.c or cp/typeck.c.  */
      while (FUNC6 (formal_type) != void_type_node
	     && FUNC0 (FUNC6 (formal_type)))	
	{
	  int parm_size
	    = FUNC4 (FUNC8 (FUNC6 (formal_type)));
	    /* Must round up to include padding.  This is done the same
	       way as in store_one_arg.  */
	  parm_size = ((parm_size + PARM_BOUNDARY - 1)
		       / PARM_BOUNDARY * PARM_BOUNDARY);
	  total += parm_size;
	  formal_type = FUNC3 (formal_type);\
	}
     }

  /* Assume max of 8 base 10 digits in the suffix.  */
  newsym = FUNC9 (1 + FUNC13 (asmname) + 1 + 8 + 1);
  p = newsym;
  if (fastcall)
    *p++ = FASTCALL_PREFIX;
  FUNC11 (p, "%s@%d", asmname, total/BITS_PER_UNIT);
  return FUNC10 (newsym);
}
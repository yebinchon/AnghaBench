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
typedef  int /*<<< orphan*/  pretty_printer ;

/* Variables and functions */
 scalar_t__ ARRAY_TYPE ; 
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNCTION_DECL ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 scalar_t__ FUNC11 (scalar_t__) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  TS_DECL_WRTL ; 
 scalar_t__ TYPE_DECL ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 
 scalar_t__ VAR_DECL ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,scalar_t__,int,int,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void
FUNC21 (pretty_printer *buffer, tree t, int spc, int flags)
{
  FUNC8 (spc);

  if (FUNC9 (t) == TYPE_DECL)
    FUNC20 (buffer, "typedef ");

  if (FUNC0 (FUNC9 (t), TS_DECL_WRTL) && FUNC6 (t))
    FUNC20 (buffer, "register ");

  if (FUNC10 (t) && FUNC2 (t))
    FUNC20 (buffer, "extern ");
  else if (FUNC11 (t))
    FUNC20 (buffer, "static ");

  /* Print the type and name.  */
  if (FUNC9 (FUNC12 (t)) == ARRAY_TYPE)
    {
      tree tmp;

      /* Print array's type.  */
      tmp = FUNC12 (t);
      while (FUNC9 (FUNC12 (tmp)) == ARRAY_TYPE)
	tmp = FUNC12 (tmp);
      FUNC17 (buffer, FUNC12 (tmp), spc, flags, false);

      /* Print variable's name.  */
      FUNC19 (buffer);
      FUNC17 (buffer, t, spc, flags, false);

      /* Print the dimensions.  */
      tmp = FUNC12 (t);
      while (FUNC9 (tmp) == ARRAY_TYPE)
	{
	  FUNC14 (buffer, FUNC13 (tmp), spc, flags);
	  tmp = FUNC12 (tmp);
	}
    }
  else if (FUNC9 (t) == FUNCTION_DECL)
    {
      FUNC17 (buffer, FUNC12 (FUNC12 (t)), spc, flags, false);
      FUNC19 (buffer);
      FUNC15 (buffer, t, flags);
      FUNC16 (buffer, FUNC12 (t), spc, flags);
    }
  else
    {
      /* Print type declaration.  */
      FUNC17 (buffer, FUNC12 (t), spc, flags, false);

      /* Print variable's name.  */
      FUNC19 (buffer);
      FUNC17 (buffer, t, spc, flags, false);
    }

  if (FUNC9 (t) == VAR_DECL && FUNC3 (t))
    {
      FUNC20 (buffer, " __asm__ ");
      FUNC18 (buffer, '(');
      FUNC17 (buffer, FUNC1 (t), spc, flags, false);
      FUNC18 (buffer, ')');
    }

  /* The initial value of a function serves to determine wether the function
     is declared or defined.  So the following does not apply to function
     nodes.  */
  if (FUNC9 (t) != FUNCTION_DECL)
    {
      /* Print the initial value.  */
      if (FUNC5 (t))
	{
	  FUNC19 (buffer);
	  FUNC18 (buffer, '=');
	  FUNC19 (buffer);
	  FUNC17 (buffer, FUNC5 (t), spc, flags, false);
	}
    }

  if (FUNC9 (t) == VAR_DECL && FUNC4 (t))
    {
      FUNC20 (buffer, " [value-expr: ");
      FUNC17 (buffer, FUNC7 (t), spc, flags, false);
      FUNC18 (buffer, ']');
    }

  FUNC18 (buffer, ';');
}
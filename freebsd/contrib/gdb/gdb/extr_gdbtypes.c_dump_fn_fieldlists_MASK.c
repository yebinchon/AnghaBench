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
struct type {int dummy; } ;
struct fn_field {int dummy; } ;

/* Variables and functions */
 struct fn_field* FUNC0 (struct type*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct type*) ; 
 int FUNC2 (struct type*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct type*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct fn_field*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct fn_field*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct fn_field*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct fn_field*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct fn_field*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct fn_field*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct fn_field*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct fn_field*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct fn_field*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct fn_field*,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int FUNC15 (struct type*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gdb_stdout ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC18 (char*,...) ; 
 int /*<<< orphan*/  FUNC19 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC21 (struct type *type, int spaces)
{
  int method_idx;
  int overload_idx;
  struct fn_field *f;

  FUNC19 (spaces, "fn_fieldlists ");
  FUNC16 (FUNC1 (type), gdb_stdout);
  FUNC18 ("\n");
  for (method_idx = 0; method_idx < FUNC15 (type); method_idx++)
    {
      f = FUNC0 (type, method_idx);
      FUNC19 (spaces + 2, "[%d] name '%s' (",
			method_idx,
			FUNC3 (type, method_idx));
      FUNC16 (FUNC3 (type, method_idx),
			      gdb_stdout);
      FUNC18 (") length %d\n",
		       FUNC2 (type, method_idx));
      for (overload_idx = 0;
	   overload_idx < FUNC2 (type, method_idx);
	   overload_idx++)
	{
	  FUNC19 (spaces + 4, "[%d] physname '%s' (",
			    overload_idx,
			    FUNC7 (f, overload_idx));
	  FUNC16 (FUNC7 (f, overload_idx),
				  gdb_stdout);
	  FUNC18 (")\n");
	  FUNC19 (spaces + 8, "type ");
	  FUNC16 (FUNC11 (f, overload_idx), gdb_stdout);
	  FUNC18 ("\n");

	  FUNC20 (FUNC11 (f, overload_idx),
			       spaces + 8 + 2);

	  FUNC19 (spaces + 8, "args ");
	  FUNC16 (FUNC4 (f, overload_idx), gdb_stdout);
	  FUNC18 ("\n");

	  FUNC17 (FUNC4 (f, overload_idx),
			   FUNC14 (FUNC11 (f, overload_idx)),
			   spaces);
	  FUNC19 (spaces + 8, "fcontext ");
	  FUNC16 (FUNC6 (f, overload_idx),
				  gdb_stdout);
	  FUNC18 ("\n");

	  FUNC19 (spaces + 8, "is_const %d\n",
			    FUNC5 (f, overload_idx));
	  FUNC19 (spaces + 8, "is_volatile %d\n",
			    FUNC13 (f, overload_idx));
	  FUNC19 (spaces + 8, "is_private %d\n",
			    FUNC8 (f, overload_idx));
	  FUNC19 (spaces + 8, "is_protected %d\n",
			    FUNC9 (f, overload_idx));
	  FUNC19 (spaces + 8, "is_stub %d\n",
			    FUNC10 (f, overload_idx));
	  FUNC19 (spaces + 8, "voffset %u\n",
			    FUNC12 (f, overload_idx));
	}
    }
}
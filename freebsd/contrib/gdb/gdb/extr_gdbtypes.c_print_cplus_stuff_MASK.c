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

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (struct type*) ; 
 int /*<<< orphan*/ * FUNC1 (struct type*) ; 
 int /*<<< orphan*/ * FUNC2 (struct type*) ; 
 scalar_t__ FUNC3 (struct type*) ; 
 scalar_t__ FUNC4 (struct type*) ; 
 scalar_t__ FUNC5 (struct type*) ; 
 scalar_t__ FUNC6 (struct type*) ; 
 int /*<<< orphan*/  FUNC7 (struct type*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gdb_stdout ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 

__attribute__((used)) static void
FUNC13 (struct type *type, int spaces)
{
  FUNC11 (spaces, "n_baseclasses %d\n",
		    FUNC6 (type));
  FUNC11 (spaces, "nfn_fields %d\n",
		    FUNC4 (type));
  FUNC11 (spaces, "nfn_fields_total %d\n",
		    FUNC5 (type));
  if (FUNC6 (type) > 0)
    {
      FUNC11 (spaces, "virtual_field_bits (%d bits at *",
			FUNC6 (type));
      FUNC8 (FUNC2 (type), gdb_stdout);
      FUNC10 (")");

      FUNC9 (FUNC2 (type),
			FUNC6 (type));
      FUNC12 ("\n");
    }
  if (FUNC3 (type) > 0)
    {
      if (FUNC0 (type) != NULL)
	{
	  FUNC11 (spaces, "private_field_bits (%d bits at *",
			    FUNC3 (type));
	  FUNC8 (FUNC0 (type), gdb_stdout);
	  FUNC10 (")");
	  FUNC9 (FUNC0 (type),
			    FUNC3 (type));
	  FUNC12 ("\n");
	}
      if (FUNC1 (type) != NULL)
	{
	  FUNC11 (spaces, "protected_field_bits (%d bits at *",
			    FUNC3 (type));
	  FUNC8 (FUNC1 (type), gdb_stdout);
	  FUNC10 (")");
	  FUNC9 (FUNC1 (type),
			    FUNC3 (type));
	  FUNC12 ("\n");
	}
    }
  if (FUNC4 (type) > 0)
    {
      FUNC7 (type, spaces);
    }
}
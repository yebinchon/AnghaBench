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
struct symtab {int dummy; } ;
struct symbol {int dummy; } ;
struct fn_field {int dummy; } ;

/* Variables and functions */
 struct fn_field* FUNC0 (struct type*,int) ; 
 int FUNC1 (struct type*,int) ; 
 char* FUNC2 (struct fn_field*,int) ; 
 scalar_t__ FUNC3 (struct fn_field*,int) ; 
 int /*<<< orphan*/  VAR_DOMAIN ; 
 char* FUNC4 (scalar_t__) ; 
 char* FUNC5 (struct type*,int,int) ; 
 scalar_t__ FUNC6 (char*) ; 
 struct symbol* FUNC7 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*,struct symtab**) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 scalar_t__ FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

__attribute__((used)) static int
FUNC11 (int method_counter, struct type *t,
		      struct symbol **sym_arr)
{
  int field_counter;
  int i1 = 0;

  for (field_counter = FUNC1 (t, method_counter) - 1;
       field_counter >= 0;
       --field_counter)
    {
      struct fn_field *f;
      char *phys_name;

      f = FUNC0 (t, method_counter);

      if (FUNC3 (f, field_counter))
	{
	  char *tmp_name;

	  tmp_name = FUNC5 (t,
				      method_counter,
				      field_counter);
	  phys_name = FUNC4 (FUNC9 (tmp_name) + 1);
	  FUNC8 (phys_name, tmp_name);
	  FUNC10 (tmp_name);
	}
      else
	phys_name = FUNC2 (f, field_counter);
		
      /* Destructor is handled by caller, don't add it to
	 the list.  */
      if (FUNC6 (phys_name) != 0)
	continue;

      sym_arr[i1] = FUNC7 (phys_name,
				   NULL, VAR_DOMAIN,
				   (int *) NULL,
				   (struct symtab **) NULL);
      if (sym_arr[i1])
	i1++;
      else
	{
	  /* This error message gets printed, but the method
	     still seems to be found
	     fputs_filtered("(Cannot find method ", gdb_stdout);
	     fprintf_symbol_filtered (gdb_stdout, phys_name,
	     language_cplus,
	     DMGL_PARAMS | DMGL_ANSI);
	     fputs_filtered(" - possibly inlined.)\n", gdb_stdout);
	  */
	}
    }

  return i1;
}
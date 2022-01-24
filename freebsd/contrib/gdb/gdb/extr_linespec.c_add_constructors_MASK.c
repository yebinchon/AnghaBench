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
 int /*<<< orphan*/  FUNC4 (char*) ; 
 struct symbol* FUNC5 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*,struct symtab**) ; 

__attribute__((used)) static int
FUNC6 (int method_counter, struct type *t,
		  struct symbol **sym_arr)
{
  int field_counter;
  int i1 = 0;

  /* For GCC 3.x and stabs, constructors and destructors
     have names like __base_ctor and __complete_dtor.
     Check the physname for now if we're looking for a
     constructor.  */
  for (field_counter
	 = FUNC1 (t, method_counter) - 1;
       field_counter >= 0;
       --field_counter)
    {
      struct fn_field *f;
      char *phys_name;
		  
      f = FUNC0 (t, method_counter);

      /* GCC 3.x will never produce stabs stub methods, so
	 we don't need to handle this case.  */
      if (FUNC3 (f, field_counter))
	continue;
      phys_name = FUNC2 (f, field_counter);
      if (! FUNC4 (phys_name))
	continue;

      /* If this method is actually defined, include it in the
	 list.  */
      sym_arr[i1] = FUNC5 (phys_name,
				   NULL, VAR_DOMAIN,
				   (int *) NULL,
				   (struct symtab **) NULL);
      if (sym_arr[i1])
	i1++;
    }

  return i1;
}
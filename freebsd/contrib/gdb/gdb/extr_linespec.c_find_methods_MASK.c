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
struct block {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct type*) ; 
 int /*<<< orphan*/  DMGL_ANSI ; 
 int /*<<< orphan*/  STRUCT_DOMAIN ; 
 struct type* FUNC1 (struct type*,int) ; 
 char* FUNC2 (struct type*,int) ; 
 int FUNC3 (struct type*) ; 
 int FUNC4 (struct type*) ; 
 scalar_t__ FUNC5 (int,struct type*,struct symbol**) ; 
 scalar_t__ FUNC6 (int,struct type*,struct symbol**) ; 
 scalar_t__ FUNC7 (char*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (char*,struct block*,int /*<<< orphan*/ ,int*,struct symtab**) ; 
 scalar_t__ FUNC9 (char*,char*) ; 
 int FUNC10 (char*) ; 
 scalar_t__ FUNC11 (char*,char*,int) ; 
 char* FUNC12 (struct type*) ; 

__attribute__((used)) static int
FUNC13 (struct type *t, char *name, struct symbol **sym_arr)
{
  int i1 = 0;
  int ibase;
  char *class_name = FUNC12 (t);

  /* Ignore this class if it doesn't have a name.  This is ugly, but
     unless we figure out how to get the physname without the name of
     the class, then the loop can't do any good.  */
  if (class_name
      && (FUNC8 (class_name, (struct block *) NULL,
			 STRUCT_DOMAIN, (int *) NULL,
			 (struct symtab **) NULL)))
    {
      int method_counter;
      int name_len = FUNC10 (name);

      FUNC0 (t);

      /* Loop over each method name.  At this level, all overloads of a name
         are counted as a single name.  There is an inner loop which loops over
         each overload.  */

      for (method_counter = FUNC3 (t) - 1;
	   method_counter >= 0;
	   --method_counter)
	{
	  char *method_name = FUNC2 (t, method_counter);
	  char dem_opname[64];

	  if (FUNC11 (method_name, "__", 2) == 0 ||
	      FUNC11 (method_name, "op", 2) == 0 ||
	      FUNC11 (method_name, "type", 4) == 0)
	    {
	      if (FUNC7 (method_name, dem_opname, DMGL_ANSI))
		method_name = dem_opname;
	      else if (FUNC7 (method_name, dem_opname, 0))
		method_name = dem_opname;
	    }

	  if (FUNC9 (name, method_name) == 0)
	    /* Find all the overloaded methods with that name.  */
	    i1 += FUNC6 (method_counter, t,
					sym_arr + i1);
	  else if (FUNC11 (class_name, name, name_len) == 0
		   && (class_name[name_len] == '\0'
		       || class_name[name_len] == '<'))
	    i1 += FUNC5 (method_counter, t,
				    sym_arr + i1);
	}
    }

  /* Only search baseclasses if there is no match yet, since names in
     derived classes override those in baseclasses.

     FIXME: The above is not true; it is only true of member functions
     if they have the same number of arguments (??? - section 13.1 of the
     ARM says the function members are not in the same scope but doesn't
     really spell out the rules in a way I understand.  In any case, if
     the number of arguments differ this is a case in which we can overload
     rather than hiding without any problem, and gcc 2.4.5 does overload
     rather than hiding in this case).  */

  if (i1 == 0)
    for (ibase = 0; ibase < FUNC4 (t); ibase++)
      i1 += FUNC13 (FUNC1 (t, ibase), name, sym_arr + i1);

  return i1;
}
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
 int /*<<< orphan*/  FUNC1 (struct fn_field*,int) ; 
 int /*<<< orphan*/  VAR_DOMAIN ; 
 scalar_t__ FUNC2 (char*,struct type*) ; 
 int FUNC3 (struct type*,char*,struct symbol**) ; 
 scalar_t__ FUNC4 (struct type*,int*,int*) ; 
 struct symbol* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*,struct symtab**) ; 

__attribute__((used)) static int
FUNC6 (char *copy, struct type *t,
		 struct symbol **sym_arr)
{
  int i1 = 0;	/*  Counter for the symbol array.  */

  if (FUNC2 (copy, t))
    {
      /* Destructors are a special case.  */
      int m_index, f_index;

      if (FUNC4 (t, &m_index, &f_index))
	{
	  struct fn_field *f = FUNC0 (t, m_index);

	  sym_arr[i1] =
	    FUNC5 (FUNC1 (f, f_index),
			   NULL, VAR_DOMAIN, (int *) NULL,
			   (struct symtab **) NULL);
	  if (sym_arr[i1])
	    i1++;
	}
    }
  else
    i1 = FUNC3 (t, copy, sym_arr);

  return i1;
}
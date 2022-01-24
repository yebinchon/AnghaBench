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
struct ui_file {int dummy; } ;
struct type {int dummy; } ;
typedef  enum val_prettyprint { ____Placeholder_val_prettyprint } val_prettyprint ;
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 struct type* FUNC2 (struct type*) ; 
 int /*<<< orphan*/  FUNC3 (struct ui_file*,char*) ; 
 int print_max ; 
 int /*<<< orphan*/  FUNC4 (struct type*,char*,int /*<<< orphan*/ ,scalar_t__,struct ui_file*,int,int,int,int) ; 

__attribute__((used)) static void
FUNC5 (int nss, int ndimensions, struct type *type, char *valaddr,
		   CORE_ADDR address, struct ui_file *stream, int format,
		   int deref_ref, int recurse, enum val_prettyprint pretty,
		   int *elts)
{
  int i;

  if (nss != ndimensions)
    {
      for (i = 0; (i < FUNC1 (nss) && (*elts) < print_max); i++)
	{
	  FUNC3 (stream, "( ");
	  FUNC5 (nss + 1, ndimensions, FUNC2 (type),
			     valaddr + i * FUNC0 (nss),
			     address + i * FUNC0 (nss),
			     stream, format, deref_ref, recurse, pretty, elts);
	  FUNC3 (stream, ") ");
	}
      if (*elts >= print_max && i < FUNC1 (nss)) 
	FUNC3 (stream, "...");
    }
  else
    {
      for (i = 0; i < FUNC1 (nss) && (*elts) < print_max; 
	   i++, (*elts)++)
	{
	  FUNC4 (FUNC2 (type),
		     valaddr + i * FUNC0 (ndimensions),
		     0,
		     address + i * FUNC0 (ndimensions),
		     stream, format, deref_ref, recurse, pretty);

	  if (i != (FUNC1 (nss) - 1))
	    FUNC3 (stream, ", ");

	  if ((*elts == print_max - 1) && (i != (FUNC1 (nss) - 1)))
	    FUNC3 (stream, "...");
	}
    }
}
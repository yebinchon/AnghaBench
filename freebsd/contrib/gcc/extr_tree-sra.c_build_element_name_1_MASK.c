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
struct sra_elt {scalar_t__ type; scalar_t__ element; struct sra_elt* parent; } ;

/* Variables and functions */
 scalar_t__ COMPLEX_TYPE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 char* HOST_WIDE_INT_PRINT_DEC ; 
 int FUNC2 (scalar_t__) ; 
 char* FUNC3 (scalar_t__) ; 
 scalar_t__ INTEGER_CST ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int FUNC5 (scalar_t__) ; 
 scalar_t__ integer_zero_node ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int) ; 
 int /*<<< orphan*/  sra_obstack ; 
 int FUNC9 (char*) ; 

__attribute__((used)) static void
FUNC10 (struct sra_elt *elt)
{
  tree t;
  char buffer[32];

  if (elt->parent)
    {
      FUNC10 (elt->parent);
      FUNC6 (&sra_obstack, '$');

      if (FUNC4 (elt->parent->type) == COMPLEX_TYPE)
	{
	  if (elt->element == integer_zero_node)
	    FUNC7 (&sra_obstack, "real", 4);
	  else
	    FUNC7 (&sra_obstack, "imag", 4);
	  return;
	}
    }

  t = elt->element;
  if (FUNC4 (t) == INTEGER_CST)
    {
      /* ??? Eh.  Don't bother doing double-wide printing.  */
      FUNC8 (buffer, HOST_WIDE_INT_PRINT_DEC, FUNC5 (t));
      FUNC7 (&sra_obstack, buffer, FUNC9 (buffer));
    }
  else
    {
      tree name = FUNC0 (t);
      if (name)
	FUNC7 (&sra_obstack, FUNC3 (name),
		      FUNC2 (name));
      else
	{
	  FUNC8 (buffer, "D%u", FUNC1 (t));
	  FUNC7 (&sra_obstack, buffer, FUNC9 (buffer));
	}
    }
}
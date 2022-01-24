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
typedef  scalar_t__ formals_style ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 scalar_t__ ansi ; 
 char const* FUNC4 (char const*,char const*,char*,...) ; 
 int /*<<< orphan*/  data_type ; 
 char* FUNC5 (char*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC6 (char const*) ; 
 scalar_t__ void_type_node ; 

__attribute__((used)) static const char *
FUNC7 (tree fntype, formals_style style)
{
  const char *formal_list = "";
  tree formal_type;

  if (style != ansi)
    return "()";

  formal_type = FUNC2 (fntype);
  while (formal_type && FUNC1 (formal_type) != void_type_node)
    {
      const char *this_type;

      if (*formal_list)
	formal_list = FUNC4 (formal_list, ", ", NULL);

      this_type = FUNC5 ("", FUNC1 (formal_type), ansi);
      formal_list
	= ((FUNC6 (this_type))
	   ? FUNC4 (formal_list, FUNC3 (this_type), NULL)
	   : FUNC4 (formal_list, data_type, NULL));

      formal_type = FUNC0 (formal_type);
    }

  /* If we got to here, then we are trying to generate an ANSI style formal
     parameters list.

     New style prototyped ANSI formal parameter lists should in theory always
     contain some stuff between the opening and closing parens, even if it is
     only "void".

     The brutal truth though is that there is lots of old K&R code out there
     which contains declarations of "pointer-to-function" parameters and
     these almost never have fully specified formal parameter lists associated
     with them.  That is, the pointer-to-function parameters are declared
     with just empty parameter lists.

     In cases such as these, protoize should really insert *something* into
     the vacant parameter lists, but what?  It has no basis on which to insert
     anything in particular.

     Here, we make life easy for protoize by trying to distinguish between
     K&R empty parameter lists and new-style prototyped parameter lists
     that actually contain "void".  In the latter case we (obviously) want
     to output the "void" verbatim, and that what we do.  In the former case,
     we do our best to give protoize something nice to insert.

     This "something nice" should be something that is still valid (when
     re-compiled) but something that can clearly indicate to the user that
     more typing information (for the parameter list) should be added (by
     hand) at some convenient moment.

     The string chosen here is a comment with question marks in it.  */

  if (!*formal_list)
    {
      if (FUNC2 (fntype))
	/* assert (TREE_VALUE (TYPE_ARG_TYPES (fntype)) == void_type_node);  */
	formal_list = "void";
      else
	formal_list = "/* ??? */";
    }
  else
    {
      /* If there were at least some parameters, and if the formals-types-list
	 petered out to a NULL (i.e. without being terminated by a
	 void_type_node) then we need to tack on an ellipsis.  */
      if (!formal_type)
	formal_list = FUNC4 (formal_list, ", ...", NULL);
    }

  return FUNC4 (" (", formal_list, ")", NULL);
}
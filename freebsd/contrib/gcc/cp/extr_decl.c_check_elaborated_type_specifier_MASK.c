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
typedef  char* tree ;
typedef  enum tag_types { ____Placeholder_tag_types } tag_types ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char*) ; 
 scalar_t__ ENUMERAL_TYPE ; 
 scalar_t__ RECORD_TYPE ; 
 scalar_t__ TEMPLATE_TYPE_PARM ; 
 scalar_t__ FUNC5 (char*) ; 
 char* FUNC6 (char*) ; 
 char* FUNC7 (char*) ; 
 scalar_t__ UNION_TYPE ; 
 int enum_type ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,...) ; 
 char* error_mark_node ; 
 char* FUNC9 (int) ; 
 int typename_type ; 

tree
FUNC10 (enum tag_types tag_code,
				 tree decl,
				 bool allow_template_p)
{
  tree type;

  /* In the case of:

       struct S { struct S *p; };

     name lookup will find the TYPE_DECL for the implicit "S::S"
     typedef.  Adjust for that here.  */
  if (FUNC4 (decl))
    decl = FUNC7 (FUNC6 (decl));

  type = FUNC6 (decl);

  /* Check TEMPLATE_TYPE_PARM first because DECL_IMPLICIT_TYPEDEF_P
     is false for this case as well.  */
  if (FUNC5 (type) == TEMPLATE_TYPE_PARM)
    {
      FUNC8 ("using template type parameter %qT after %qs",
	     type, FUNC9 (tag_code));
      return error_mark_node;
    }
  /*   [dcl.type.elab]

       If the identifier resolves to a typedef-name or a template
       type-parameter, the elaborated-type-specifier is ill-formed.

     In other words, the only legitimate declaration to use in the
     elaborated type specifier is the implicit typedef created when
     the type is declared.  */
  else if (!FUNC2 (decl)
	   && tag_code != typename_type)
    {
      FUNC8 ("using typedef-name %qD after %qs", decl, FUNC9 (tag_code));
      FUNC8 ("%q+D has a previous declaration here", decl);
      return error_mark_node;
    }
  else if (FUNC5 (type) != RECORD_TYPE
	   && FUNC5 (type) != UNION_TYPE
	   && tag_code != enum_type
	   && tag_code != typename_type)
    {
      FUNC8 ("%qT referred to as %qs", type, FUNC9 (tag_code));
      FUNC8 ("%q+T has a previous declaration here", type);
      return error_mark_node;
    }
  else if (FUNC5 (type) != ENUMERAL_TYPE
	   && tag_code == enum_type)
    {
      FUNC8 ("%qT referred to as enum", type);
      FUNC8 ("%q+T has a previous declaration here", type);
      return error_mark_node;
    }
  else if (!allow_template_p
	   && FUNC5 (type) == RECORD_TYPE
	   && FUNC0 (type))
    {
      /* If a class template appears as elaborated type specifier
	 without a template header such as:

	   template <class T> class C {};
	   void f(class C);		// No template header here

	 then the required template argument is missing.  */
      FUNC8 ("template argument required for %<%s %T%>",
	     FUNC9 (tag_code),
	     FUNC3 (FUNC1 (type)));
      return error_mark_node;
    }

  return type;
}
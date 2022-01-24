#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
struct TYPE_5__ {scalar_t__ scope; } ;
typedef  TYPE_1__ cp_parser ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ BIT_NOT_EXPR ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ NAMESPACE_DECL ; 
 scalar_t__ TEMPLATE_DECL ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ TYPE_DECL ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 scalar_t__ FUNC10 (TYPE_1__*,scalar_t__) ; 
 scalar_t__ current_class_type ; 
 scalar_t__ FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 
 scalar_t__ error_mark_node ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (char*,scalar_t__,scalar_t__) ; 
 scalar_t__ processing_template_decl ; 

__attribute__((used)) static void
FUNC15 (cp_parser *parser, tree scope, tree id)
{
  tree decl, old_scope;
  /* Try to lookup the identifier.  */
  old_scope = parser->scope;
  parser->scope = scope;
  decl = FUNC10 (parser, id);
  parser->scope = old_scope;
  /* If the lookup found a template-name, it means that the user forgot
  to specify an argument list. Emit a useful error message.  */
  if (FUNC5 (decl) == TEMPLATE_DECL)
    FUNC12 ("invalid use of template-name %qE without an argument list", decl);
  else if (FUNC5 (id) == BIT_NOT_EXPR)
    FUNC12 ("invalid use of destructor %qD as a type", id);
  else if (FUNC5 (decl) == TYPE_DECL)
    /* Something like 'unsigned A a;'  */
    FUNC12 ("invalid combination of multiple type-specifiers");
  else if (!parser->scope)
    {
      /* Issue an error message.  */
      FUNC12 ("%qE does not name a type", id);
      /* If we're in a template class, it's possible that the user was
	 referring to a type from a base class.  For example:

	   template <typename T> struct A { typedef T X; };
	   template <typename T> struct B : public A<T> { X x; };

	 The user should have said "typename A<T>::X".  */
      if (processing_template_decl && current_class_type
	  && FUNC6 (current_class_type))
	{
	  tree b;

	  for (b = FUNC4 (FUNC6 (current_class_type));
	       b;
	       b = FUNC4 (b))
	    {
	      tree base_type = FUNC0 (b);
	      if (FUNC2 (base_type)
		  && FUNC11 (base_type))
		{
		  tree field;
		  /* Go from a particular instantiation of the
		     template (which will have an empty TYPE_FIELDs),
		     to the main version.  */
		  base_type = FUNC1 (base_type);
		  for (field = FUNC7 (base_type);
		       field;
		       field = FUNC4 (field))
		    if (FUNC5 (field) == TYPE_DECL
			&& FUNC3 (field) == id)
		      {
			FUNC14 ("(perhaps %<typename %T::%E%> was intended)",
				FUNC0 (b), id);
			break;
		      }
		  if (field)
		    break;
		}
	    }
	}
    }
  /* Here we diagnose qualified-ids where the scope is actually correct,
     but the identifier does not resolve to a valid type name.  */
  else if (parser->scope != error_mark_node)
    {
      if (FUNC5 (parser->scope) == NAMESPACE_DECL)
	FUNC12 ("%qE in namespace %qE does not name a type",
	       id, parser->scope);
      else if (FUNC8 (parser->scope))
	FUNC12 ("%qE in class %qT does not name a type", id, parser->scope);
      else
	FUNC13 ();
    }
  FUNC9 (parser);
}
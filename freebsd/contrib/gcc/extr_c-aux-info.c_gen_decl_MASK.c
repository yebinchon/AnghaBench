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
typedef  int /*<<< orphan*/  tree ;
typedef  scalar_t__ formals_style ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNCTION_DECL ; 
 char* FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 char* FUNC8 (char const*) ; 
 int /*<<< orphan*/  ansi ; 
 char* FUNC9 (char const*,char const*,int /*<<< orphan*/ *) ; 
 char* data_type ; 
 char const* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC11 (char const*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ k_and_r_names ; 

__attribute__((used)) static const char *
FUNC12 (tree decl, int is_func_definition, formals_style style)
{
  const char *ret_val;

  if (FUNC1 (decl))
    ret_val = FUNC2 (FUNC1 (decl));
  else
    ret_val = "";

  /* If we are just generating a list of names of formal parameters, we can
     simply return the formal parameter name (with no typing information
     attached to it) now.  */

  if (style == k_and_r_names)
    return ret_val;

  /* Note that for the declaration of some entity (either a function or a
     data object, like for instance a parameter) if the entity itself was
     declared as either const or volatile, then const and volatile properties
     are associated with just the declaration of the entity, and *not* with
     the `type' of the entity.  Thus, for such declared entities, we have to
     generate the qualifiers here.  */

  if (FUNC6 (decl))
    ret_val = FUNC9 ("volatile ", ret_val, NULL);
  if (FUNC5 (decl))
    ret_val = FUNC9 ("const ", ret_val, NULL);

  data_type = "";

  /* For FUNCTION_DECL nodes, there are two possible cases here.  First, if
     this FUNCTION_DECL node was generated from a function "definition", then
     we will have a list of DECL_NODE's, one for each of the function's formal
     parameters.  In this case, we can print out not only the types of each
     formal, but also each formal's name.  In the second case, this
     FUNCTION_DECL node came from an actual function declaration (and *not*
     a definition).  In this case, we do nothing here because the formal
     argument type-list will be output later, when the "type" of the function
     is added to the string we are building.  Note that the ANSI-style formal
     parameter list is considered to be a (suffix) part of the "type" of the
     function.  */

  if (FUNC3 (decl) == FUNCTION_DECL && is_func_definition)
    {
      ret_val = FUNC9 (ret_val, FUNC10 (decl, ansi),
			NULL);

      /* Since we have already added in the formals list stuff, here we don't
	 add the whole "type" of the function we are considering (which
	 would include its parameter-list info), rather, we only add in
	 the "type" of the "type" of the function, which is really just
	 the return-type of the function (and does not include the parameter
	 list info).  */

      ret_val = FUNC11 (ret_val, FUNC7 (FUNC7 (decl)), style);
    }
  else
    ret_val = FUNC11 (ret_val, FUNC7 (decl), style);

  ret_val = FUNC8 (ret_val);

  if (FUNC3 (decl) != FUNCTION_DECL && FUNC0 (decl))
    ret_val = FUNC9 ("register ", ret_val, NULL);
  if (FUNC4 (decl))
    ret_val = FUNC9 ("extern ", ret_val, NULL);
  if (FUNC3 (decl) == FUNCTION_DECL && !FUNC4 (decl))
    ret_val = FUNC9 ("static ", ret_val, NULL);

  return ret_val;
}
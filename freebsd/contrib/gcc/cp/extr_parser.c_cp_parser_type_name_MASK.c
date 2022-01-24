#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
struct TYPE_11__ {int /*<<< orphan*/  scope; } ;
typedef  TYPE_1__ cp_parser ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ TYPE_DECL ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int,int,int /*<<< orphan*/ ,int,int,int) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,scalar_t__,scalar_t__,char*) ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 scalar_t__ error_mark_node ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  none_type ; 
 scalar_t__ FUNC11 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 scalar_t__ FUNC13 (scalar_t__) ; 

__attribute__((used)) static tree
FUNC14 (cp_parser* parser)
{
  tree type_decl;
  tree identifier;

  /* We can't know yet whether it is a class-name or not.  */
  FUNC8 (parser);
  /* Try a class-name.  */
  type_decl = FUNC2 (parser,
				    /*typename_keyword_p=*/false,
				    /*template_keyword_p=*/false,
				    none_type,
				    /*check_dependency_p=*/true,
				    /*class_head_p=*/false,
				    /*is_declaration=*/false);
  /* If it's not a class-name, keep looking.  */
  if (!FUNC7 (parser))
    {
      /* It must be a typedef-name or an enum-name.  */
      identifier = FUNC3 (parser);
      if (identifier == error_mark_node)
	return error_mark_node;

      /* Look up the type-name.  */
      type_decl = FUNC4 (parser, identifier);

      if (FUNC0 (type_decl) != TYPE_DECL
	  && (FUNC13 (identifier) || FUNC12 (identifier)))
	{
	  /* See if this is an Objective-C type.  */
	  tree protos = FUNC6 (parser);
	  tree type = FUNC11 (identifier, protos);
	  if (type)
	    type_decl = FUNC1 (type);
	}

      /* Issue an error if we did not find a type-name.  */
      if (FUNC0 (type_decl) != TYPE_DECL)
	{
	  if (!FUNC9 (parser))
	    FUNC5 (parser, identifier, type_decl,
					 "is not a type");
	  type_decl = error_mark_node;
	}
      /* Remember that the name was used in the definition of the
	 current class so that we can check later to see if the
	 meaning would have been different after the class was
	 entirely defined.  */
      else if (type_decl != error_mark_node
	       && !parser->scope)
	FUNC10 (identifier, type_decl);
    }

  return type_decl;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
typedef  int /*<<< orphan*/  tag_scope ;
typedef  enum tag_types { ____Placeholder_tag_types } tag_types ;
struct TYPE_20__ {scalar_t__ scope; int /*<<< orphan*/  lexer; scalar_t__ num_template_parameter_lists; } ;
typedef  TYPE_1__ cp_parser ;

/* Variables and functions */
 scalar_t__ ATTR_FLAG_TYPE_IN_PLACE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  CPP_SEMICOLON ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ NAMESPACE_DECL ; 
 void* NULL_TREE ; 
 int /*<<< orphan*/  OPT_Wattributes ; 
 int /*<<< orphan*/  RID_ENUM ; 
 int /*<<< orphan*/  RID_TYPENAME ; 
 scalar_t__ TEMPLATE_ID_EXPR ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ TYPENAME_TYPE ; 
 scalar_t__ TYPE_DECL ; 
 scalar_t__ FUNC4 (int,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC12 (TYPE_1__*) ; 
 scalar_t__ FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,int) ; 
 scalar_t__ FUNC16 (TYPE_1__*) ; 
 scalar_t__ FUNC17 (TYPE_1__*,scalar_t__,int,int,int,int,scalar_t__*) ; 
 scalar_t__ FUNC18 (TYPE_1__*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC19 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_1__*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_1__*,int,int,int,int) ; 
 scalar_t__ FUNC22 (TYPE_1__*) ; 
 int FUNC23 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_1__*) ; 
 scalar_t__ FUNC26 (TYPE_1__*,int,int,int) ; 
 int /*<<< orphan*/  FUNC27 (scalar_t__*,scalar_t__,int) ; 
 int enum_type ; 
 scalar_t__ error_mark_node ; 
 scalar_t__ FUNC28 (scalar_t__,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int none_type ; 
 int /*<<< orphan*/  FUNC29 (char*) ; 
 int /*<<< orphan*/  processing_explicit_instantiation ; 
 int /*<<< orphan*/  processing_template_decl ; 
 int /*<<< orphan*/  tf_error ; 
 int /*<<< orphan*/  ts_current ; 
 int /*<<< orphan*/  ts_global ; 
 int /*<<< orphan*/  ts_within_enclosing_non_class ; 
 int typename_type ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC31 (int,scalar_t__,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static tree
FUNC32 (cp_parser* parser,
				     bool is_friend,
				     bool is_declaration)
{
  enum tag_types tag_type;
  tree identifier;
  tree type = NULL_TREE;
  tree attributes = NULL_TREE;

  /* See if we're looking at the `enum' keyword.  */
  if (FUNC7 (parser->lexer, RID_ENUM))
    {
      /* Consume the `enum' token.  */
      FUNC5 (parser->lexer);
      /* Remember that it's an enumeration type.  */
      tag_type = enum_type;
      /* Parse the attributes.  */
      attributes = FUNC8 (parser);
    }
  /* Or, it might be `typename'.  */
  else if (FUNC7 (parser->lexer,
					   RID_TYPENAME))
    {
      /* Consume the `typename' token.  */
      FUNC5 (parser->lexer);
      /* Remember that it's a `typename' type.  */
      tag_type = typename_type;
      /* The `typename' keyword is only allowed in templates.  */
      if (!processing_template_decl)
	FUNC29 ("using %<typename%> outside of template");
    }
  /* Otherwise it must be a class-key.  */
  else
    {
      tag_type = FUNC12 (parser);
      if (tag_type == none_type)
	return error_mark_node;
      /* Parse the attributes.  */
      attributes = FUNC8 (parser);
    }

  /* Look for the `::' operator.  */
  FUNC15 (parser,
			      /*current_scope_valid_p=*/false);
  /* Look for the nested-name-specifier.  */
  if (tag_type == typename_type)
    {
      if (!FUNC20 (parser,
					   /*typename_keyword_p=*/true,
					   /*check_dependency_p=*/true,
					   /*type_p=*/true,
					    is_declaration))
	return error_mark_node;
    }
  else
    /* Even though `typename' is not present, the proposed resolution
       to Core Issue 180 says that in `class A<T>::B', `B' should be
       considered a type-name, even if `A<T>' is dependent.  */
    FUNC21 (parser,
					 /*typename_keyword_p=*/true,
					 /*check_dependency_p=*/true,
					 /*type_p=*/true,
					 is_declaration);
  /* For everything but enumeration types, consider a template-id.
     For an enumeration type, consider only a plain identifier.  */
  if (tag_type != enum_type)
    {
      bool template_p = false;
      tree decl;

      /* Allow the `template' keyword.  */
      template_p = FUNC23 (parser);
      /* If we didn't see `template', we don't know if there's a
	 template-id or not.  */
      if (!template_p)
	FUNC25 (parser);
      /* Parse the template-id.  */
      decl = FUNC26 (parser, template_p,
				    /*check_dependency_p=*/true,
				    is_declaration);
      /* If we didn't find a template-id, look for an ordinary
	 identifier.  */
      if (!template_p && !FUNC24 (parser))
	;
      /* If DECL is a TEMPLATE_ID_EXPR, and the `typename' keyword is
	 in effect, then we must assume that, upon instantiation, the
	 template will correspond to a class.  */
      else if (FUNC2 (decl) == TEMPLATE_ID_EXPR
	       && tag_type == typename_type)
	type = FUNC28 (parser->scope, decl,
				   typename_type,
				   /*complain=*/tf_error);
      else
	type = FUNC3 (decl);
    }

  if (!type)
    {
      identifier = FUNC16 (parser);

      if (identifier == error_mark_node)
	{
	  parser->scope = NULL_TREE;
	  return error_mark_node;
	}

      /* For a `typename', we needn't call xref_tag.  */
      if (tag_type == typename_type
	  && FUNC2 (parser->scope) != NAMESPACE_DECL)
	return FUNC18 (parser, parser->scope,
					     identifier);
      /* Look up a qualified name in the usual way.  */
      if (parser->scope)
	{
	  tree decl;
	  tree ambiguous_decls;

	  decl = FUNC17 (parser, identifier,
					tag_type,
					/*is_template=*/false,
					/*is_namespace=*/false,
					/*check_dependency=*/true,
					&ambiguous_decls);

	  /* If the lookup was ambiguous, an error will already have been
	     issued.  */
	  if (ambiguous_decls)
	    return error_mark_node;

	  /* If we are parsing friend declaration, DECL may be a
	     TEMPLATE_DECL tree node here.  However, we need to check
	     whether this TEMPLATE_DECL results in valid code.  Consider
	     the following example:

	       namespace N {
		 template <class T> class C {};
	       }
	       class X {
		 template <class T> friend class N::C; // #1, valid code
	       };
	       template <class T> class Y {
		 friend class N::C;		       // #2, invalid code
	       };

	     For both case #1 and #2, we arrive at a TEMPLATE_DECL after
	     name lookup of `N::C'.  We see that friend declaration must
	     be template for the code to be valid.  Note that
	     processing_template_decl does not work here since it is
	     always 1 for the above two cases.  */

	  decl = (FUNC19
		  (decl, /*tag_name_p=*/is_friend
			 && parser->num_template_parameter_lists));

	  if (FUNC2 (decl) != TYPE_DECL)
	    {
	      FUNC14 (parser,
						    parser->scope,
						    identifier);
	      return error_mark_node;
	    }

	  if (FUNC2 (FUNC3 (decl)) != TYPENAME_TYPE)
            {
              bool allow_template = (parser->num_template_parameter_lists
		                      || FUNC1 (decl));
              type = FUNC4 (tag_type, decl, 
                                                      allow_template);

              if (type == error_mark_node)
                return error_mark_node;
            }

	  type = FUNC3 (decl);
	}
      else
	{
	  /* An elaborated-type-specifier sometimes introduces a new type and
	     sometimes names an existing type.  Normally, the rule is that it
	     introduces a new type only if there is not an existing type of
	     the same name already in scope.  For example, given:

	       struct S {};
	       void f() { struct S s; }

	     the `struct S' in the body of `f' is the same `struct S' as in
	     the global scope; the existing definition is used.  However, if
	     there were no global declaration, this would introduce a new
	     local class named `S'.

	     An exception to this rule applies to the following code:

	       namespace N { struct S; }

	     Here, the elaborated-type-specifier names a new type
	     unconditionally; even if there is already an `S' in the
	     containing scope this declaration names a new type.
	     This exception only applies if the elaborated-type-specifier
	     forms the complete declaration:

	       [class.name]

	       A declaration consisting solely of `class-key identifier ;' is
	       either a redeclaration of the name in the current scope or a
	       forward declaration of the identifier as a class name.  It
	       introduces the name into the current scope.

	     We are in this situation precisely when the next token is a `;'.

	     An exception to the exception is that a `friend' declaration does
	     *not* name a new type; i.e., given:

	       struct S { friend struct T; };

	     `T' is not a new type in the scope of `S'.

	     Also, `new struct S' or `sizeof (struct S)' never results in the
	     definition of a new type; a new type can only be declared in a
	     declaration context.  */

	  tag_scope ts;
	  bool template_p;

	  if (is_friend)
	    /* Friends have special name lookup rules.  */
	    ts = ts_within_enclosing_non_class;
	  else if (is_declaration
		   && FUNC6 (parser->lexer,
					      CPP_SEMICOLON))
	    /* This is a `class-key identifier ;' */
	    ts = ts_current;
	  else
	    ts = ts_global;

	  template_p =
	    (parser->num_template_parameter_lists
	     && (FUNC22 (parser)
		 || FUNC6 (parser->lexer, CPP_SEMICOLON)));
	  /* An unqualified name was used to reference this type, so
	     there were no qualifying templates.  */
	  if (!FUNC11 (parser,
						    /*num_templates=*/0))
	    return error_mark_node;
	  type = FUNC31 (tag_type, identifier, ts, template_p);
	}
    }

  if (type == error_mark_node)
    return error_mark_node;

  /* Allow attributes on forward declarations of classes.  */
  if (attributes)
    {
      if (FUNC2 (type) == TYPENAME_TYPE)
	FUNC30 (OPT_Wattributes,
		 "attributes ignored on uninstantiated type");
      else if (tag_type != enum_type && FUNC0 (type)
	       && ! processing_explicit_instantiation)
	FUNC30 (OPT_Wattributes,
		 "attributes ignored on template instantiation");
      else if (is_declaration && FUNC13 (parser))
	FUNC27 (&type, attributes, (int) ATTR_FLAG_TYPE_IN_PLACE);
      else
	FUNC30 (OPT_Wattributes,
		 "attributes ignored on elaborated-type-specifier that is not a forward declaration");
    }

  if (tag_type != enum_type)
    FUNC9 (tag_type, type);

  /* A "<" cannot follow an elaborated type specifier.  If that
     happens, the user was probably trying to form a template-id.  */
  FUNC10 (parser, type);

  return type;
}
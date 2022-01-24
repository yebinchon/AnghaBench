#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_27__   TYPE_3__ ;
typedef  struct TYPE_26__   TYPE_2__ ;
typedef  struct TYPE_25__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
typedef  scalar_t__ special_function_kind ;
struct TYPE_25__ {scalar_t__ type; int /*<<< orphan*/  location; } ;
typedef  TYPE_1__ cp_token ;
typedef  scalar_t__ cp_parser_declarator_kind ;
struct TYPE_26__ {int default_arg_ok_p; int in_declarator_p; unsigned int num_template_parameter_lists; int in_type_id_in_expr_p; scalar_t__ scope; int /*<<< orphan*/  in_function_body; int /*<<< orphan*/  lexer; } ;
typedef  TYPE_2__ cp_parser ;
typedef  int /*<<< orphan*/  cp_parameter_declarator ;
struct TYPE_27__ {scalar_t__ kind; int /*<<< orphan*/  id_loc; } ;
typedef  TYPE_3__ cp_declarator ;
typedef  int /*<<< orphan*/  cp_cv_quals ;

/* Variables and functions */
 scalar_t__ BIT_NOT_EXPR ; 
 scalar_t__ BLOCKDEF ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ CPP_CLOSE_PAREN ; 
 scalar_t__ CPP_CLOSE_SQUARE ; 
 scalar_t__ CPP_OPEN_PAREN ; 
 scalar_t__ CPP_OPEN_SQUARE ; 
 scalar_t__ CP_PARSER_DECLARATOR_BLOCK ; 
 scalar_t__ CP_PARSER_DECLARATOR_EITHER ; 
 scalar_t__ CP_PARSER_DECLARATOR_NAMED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ IDENTIFIER_NODE ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ TYPENAME_TYPE ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 scalar_t__ TYPE_DECL ; 
 char* FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  TYPE_UNQUALIFIED ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 () ; 
 scalar_t__ cdk_id ; 
 scalar_t__ FUNC11 (scalar_t__) ; 
 scalar_t__ FUNC12 (scalar_t__,scalar_t__) ; 
 TYPE_3__* cp_error_declarator ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC14 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (TYPE_2__*,int,int*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*) ; 
 TYPE_3__* FUNC17 (TYPE_2__*,scalar_t__,int*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC18 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_2__*,char*) ; 
 scalar_t__ FUNC20 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC21 (TYPE_2__*) ; 
 scalar_t__ FUNC22 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_2__*,scalar_t__,char*) ; 
 scalar_t__ current_class_type ; 
 int /*<<< orphan*/  FUNC25 (char*,...) ; 
 scalar_t__ error_mark_node ; 
 scalar_t__ FUNC26 (scalar_t__) ; 
 scalar_t__ FUNC27 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC28 (char*,scalar_t__,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 TYPE_3__* FUNC29 (TYPE_3__*,scalar_t__) ; 
 TYPE_3__* FUNC30 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 TYPE_3__* FUNC31 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC32 (scalar_t__) ; 
 scalar_t__ FUNC33 (scalar_t__) ; 
 scalar_t__ FUNC34 (scalar_t__,int) ; 
 scalar_t__ FUNC35 (scalar_t__,scalar_t__) ; 
 scalar_t__ sfk_constructor ; 
 scalar_t__ sfk_conversion ; 
 scalar_t__ sfk_destructor ; 
 scalar_t__ sfk_none ; 

__attribute__((used)) static cp_declarator *
FUNC36 (cp_parser* parser,
			     cp_parser_declarator_kind dcl_kind,
			     int* ctor_dtor_or_conv_p,
			     bool member_p)
{
  cp_token *token;
  cp_declarator *declarator = NULL;
  tree scope = NULL_TREE;
  bool saved_default_arg_ok_p = parser->default_arg_ok_p;
  bool saved_in_declarator_p = parser->in_declarator_p;
  bool first = true;
  tree pushed_scope = NULL_TREE;

  while (true)
    {
      /* Peek at the next token.  */
      token = FUNC14 (parser->lexer);
      if (token->type == CPP_OPEN_PAREN)
	{
	  /* This is either a parameter-declaration-clause, or a
	     parenthesized declarator. When we know we are parsing a
	     named declarator, it must be a parenthesized declarator
	     if FIRST is true. For instance, `(int)' is a
	     parameter-declaration-clause, with an omitted
	     direct-abstract-declarator. But `((*))', is a
	     parenthesized abstract declarator. Finally, when T is a
	     template parameter `(T)' is a
	     parameter-declaration-clause, and not a parenthesized
	     named declarator.

	     We first try and parse a parameter-declaration-clause,
	     and then try a nested declarator (if FIRST is true).

	     It is not an error for it not to be a
	     parameter-declaration-clause, even when FIRST is
	     false. Consider,

	       int i (int);
	       int i (3);

	     The first is the declaration of a function while the
	     second is a the definition of a variable, including its
	     initializer.

	     Having seen only the parenthesis, we cannot know which of
	     these two alternatives should be selected.  Even more
	     complex are examples like:

	       int i (int (a));
	       int i (int (3));

	     The former is a function-declaration; the latter is a
	     variable initialization.

	     Thus again, we try a parameter-declaration-clause, and if
	     that fails, we back out and return.  */

	  if (!first || dcl_kind != CP_PARSER_DECLARATOR_NAMED)
	    {
	      cp_parameter_declarator *params;
	      unsigned saved_num_template_parameter_lists;

	      /* In a member-declarator, the only valid interpretation
		 of a parenthesis is the start of a
		 parameter-declaration-clause.  (It is invalid to
		 initialize a static data member with a parenthesized
		 initializer; only the "=" form of initialization is
		 permitted.)  */
	      if (!member_p)
		FUNC23 (parser);

	      /* Consume the `('.  */
	      FUNC13 (parser->lexer);
	      if (first)
		{
		  /* If this is going to be an abstract declarator, we're
		     in a declarator and we can't have default args.  */
		  parser->default_arg_ok_p = false;
		  parser->in_declarator_p = true;
		}

	      /* Inside the function parameter list, surrounding
		 template-parameter-lists do not apply.  */
	      saved_num_template_parameter_lists
		= parser->num_template_parameter_lists;
	      parser->num_template_parameter_lists = 0;

	      /* Parse the parameter-declaration-clause.  */
	      params = FUNC21 (parser);

	      parser->num_template_parameter_lists
		= saved_num_template_parameter_lists;

	      /* If all went well, parse the cv-qualifier-seq and the
		 exception-specification.  */
	      if (member_p || FUNC22 (parser))
		{
		  cp_cv_quals cv_quals;
		  tree exception_specification;

		  if (ctor_dtor_or_conv_p)
		    *ctor_dtor_or_conv_p = *ctor_dtor_or_conv_p < 0;
		  first = false;
		  /* Consume the `)'.  */
		  FUNC24 (parser, CPP_CLOSE_PAREN, "`)'");

		  /* APPLE LOCAL begin blocks 6339747 */
		  if (dcl_kind != BLOCKDEF)
		    {
		      /* Parse the cv-qualifier-seq.  */
		      cv_quals = FUNC16 (parser);
		    }
		  else
		    cv_quals = TYPE_UNQUALIFIED;
		  /* APPLE LOCAL end blocks 6339747 */

		  /* And the exception-specification.  */
		  exception_specification
		    = FUNC20 (parser);

		  /* Create the function-declarator.  */
		  declarator = FUNC30 (declarator,
						     params,
						     cv_quals,
						     exception_specification);
		  /* Any subsequent parameter lists are to do with
		     return type, so are not those of the declared
		     function.  */
		  parser->default_arg_ok_p = false;

		  /* Repeat the main loop.  */
		  continue;
		}
	    }

	  /* If this is the first, we can try a parenthesized
	     declarator.  */
	  if (first)
	    {
	      bool saved_in_type_id_in_expr_p;

	      parser->default_arg_ok_p = saved_default_arg_ok_p;
	      parser->in_declarator_p = saved_in_declarator_p;

	      /* Consume the `('.  */
	      FUNC13 (parser->lexer);
	      /* Parse the nested declarator.  */
	      saved_in_type_id_in_expr_p = parser->in_type_id_in_expr_p;
	      parser->in_type_id_in_expr_p = true;
	      declarator
		= FUNC17 (parser, dcl_kind, ctor_dtor_or_conv_p,
					/*parenthesized_p=*/NULL,
					member_p);
	      parser->in_type_id_in_expr_p = saved_in_type_id_in_expr_p;
	      first = false;
	      /* Expect a `)'.  */
	      if (!FUNC24 (parser, CPP_CLOSE_PAREN, "`)'"))
		declarator = cp_error_declarator;
	      if (declarator == cp_error_declarator)
		break;

	      goto handle_declarator;
	    }
	  /* Otherwise, we must be done.  */
	  else
	    break;
	}
      else if ((!first || dcl_kind != CP_PARSER_DECLARATOR_NAMED)
	       && token->type == CPP_OPEN_SQUARE)
	{
	  /* Parse an array-declarator.  */
	  tree bounds;

	  if (ctor_dtor_or_conv_p)
	    *ctor_dtor_or_conv_p = 0;

	  first = false;
	  parser->default_arg_ok_p = false;
	  parser->in_declarator_p = true;
	  /* Consume the `['.  */
	  FUNC13 (parser->lexer);
	  /* Peek at the next token.  */
	  token = FUNC14 (parser->lexer);
	  /* If the next token is `]', then there is no
	     constant-expression.  */
	  if (token->type != CPP_CLOSE_SQUARE)
	    {
	      bool non_constant_p;

	      bounds
		= FUNC15 (parser,
						 /*allow_non_constant=*/true,
						 &non_constant_p);
	      if (!non_constant_p)
		bounds = FUNC26 (bounds);
	      /* Normally, the array bound must be an integral constant
		 expression.  However, as an extension, we allow VLAs
		 in function scopes.  */
	      else if (!parser->in_function_body)
		{
		  FUNC25 ("array bound is not an integer constant");
		  bounds = error_mark_node;
		}
	    }
	  else
	    bounds = NULL_TREE;
	  /* Look for the closing `]'.  */
	  if (!FUNC24 (parser, CPP_CLOSE_SQUARE, "`]'"))
	    {
	      declarator = cp_error_declarator;
	      break;
	    }

	  declarator = FUNC29 (declarator, bounds);
	}
      /* APPLE LOCAL begin blocks 6339747 */
      else if (first && (dcl_kind == CP_PARSER_DECLARATOR_NAMED
			 || dcl_kind == CP_PARSER_DECLARATOR_EITHER))
      /* APPLE LOCAL end blocks 6339747 */
	{
	  tree qualifying_scope;
	  tree unqualified_name;
	  special_function_kind sfk;
	  bool abstract_ok;

	  /* Parse a declarator-id */
	  abstract_ok = (dcl_kind == CP_PARSER_DECLARATOR_EITHER);
	  if (abstract_ok)
	    FUNC23 (parser);
	  unqualified_name
	    = FUNC18 (parser, /*optional_p=*/abstract_ok);
	  qualifying_scope = parser->scope;
	  if (abstract_ok)
	    {
	      if (!FUNC22 (parser))
		unqualified_name = error_mark_node;
	      else if (unqualified_name
		       && (qualifying_scope
			   || (FUNC4 (unqualified_name)
			       != IDENTIFIER_NODE)))
		{
		  FUNC19 (parser, "expected unqualified-id");
		  unqualified_name = error_mark_node;
		}
	    }

	  if (!unqualified_name)
	    return NULL;
	  if (unqualified_name == error_mark_node)
	    {
	      declarator = cp_error_declarator;
	      break;
	    }

	  if (qualifying_scope && FUNC10 ()
	      && FUNC4 (qualifying_scope) == TYPENAME_TYPE)
	    {
	      /* In the declaration of a member of a template class
		 outside of the class itself, the SCOPE will sometimes
		 be a TYPENAME_TYPE.  For example, given:

		 template <typename T>
		 int S<T>::R::i = 3;

		 the SCOPE will be a TYPENAME_TYPE for `S<T>::R'.  In
		 this context, we must resolve S<T>::R to an ordinary
		 type, rather than a typename type.

		 The reason we normally avoid resolving TYPENAME_TYPEs
		 is that a specialization of `S' might render
		 `S<T>::R' not a type.  However, if `S' is
		 specialized, then this `i' will not be used, so there
		 is no harm in resolving the types here.  */
	      tree type;

	      /* Resolve the TYPENAME_TYPE.  */
	      type = FUNC34 (qualifying_scope,
					    /*only_current_p=*/false);
	      /* If that failed, the declarator is invalid.  */
	      if (type == error_mark_node)
		FUNC25 ("%<%T::%D%> is not a type",
		       FUNC6 (qualifying_scope),
		       FUNC7 (qualifying_scope));
	      qualifying_scope = type;
	    }

	  sfk = sfk_none;
	  if (unqualified_name)
	    {
	      tree class_type;

	      if (qualifying_scope
		  && FUNC1 (qualifying_scope))
		class_type = qualifying_scope;
	      else
		class_type = current_class_type;

	      if (FUNC4 (unqualified_name) == TYPE_DECL)
		{
		  tree name_type = FUNC5 (unqualified_name);
		  if (class_type && FUNC35 (name_type, class_type))
		    {
		      if (qualifying_scope
			  && FUNC0 (name_type))
			{
			  FUNC25 ("invalid use of constructor as a template");
			  FUNC28 ("use %<%T::%D%> instead of %<%T::%D%> to "
				  "name the constructor in a qualified name",
				  class_type,
				  FUNC2 (FUNC8 (class_type)),
				  class_type, name_type);
			  declarator = cp_error_declarator;
			  break;
			}
		      else
			unqualified_name = FUNC11 (class_type);
		    }
		  else
		    {
		      /* We do not attempt to print the declarator
			 here because we do not have enough
			 information about its original syntactic
			 form.  */
		      FUNC19 (parser, "invalid declarator");
		      declarator = cp_error_declarator;
		      break;
		    }
		}

	      if (class_type)
		{
		  if (FUNC4 (unqualified_name) == BIT_NOT_EXPR)
		    sfk = sfk_destructor;
		  else if (FUNC3 (unqualified_name))
		    sfk = sfk_conversion;
		  else if (/* There's no way to declare a constructor
			      for an anonymous type, even if the type
			      got a name for linkage purposes.  */
			   !FUNC9 (class_type)
			   && FUNC12 (unqualified_name,
						  class_type))
		    {
		      unqualified_name = FUNC11 (class_type);
		      sfk = sfk_constructor;
		    }

		  if (ctor_dtor_or_conv_p && sfk != sfk_none)
		    *ctor_dtor_or_conv_p = -1;
		}
	    }
	  declarator = FUNC31 (qualifying_scope,
					   unqualified_name,
					   sfk);
	  declarator->id_loc = token->location;

	handle_declarator:;
	  scope = FUNC27 (declarator);
	  if (scope)
	    /* Any names that appear after the declarator-id for a
	       member are looked up in the containing scope.  */
	    pushed_scope = FUNC33 (scope);
	  parser->in_declarator_p = true;
	  if ((ctor_dtor_or_conv_p && *ctor_dtor_or_conv_p)
	      || (declarator && declarator->kind == cdk_id))
	    /* Default args are only allowed on function
	       declarations.  */
	    parser->default_arg_ok_p = saved_default_arg_ok_p;
	  else
	    parser->default_arg_ok_p = false;

	  first = false;
	}
      /* We're done.  */
      else
	break;
    }

  /* For an abstract declarator, we might wind up with nothing at this
     point.  That's an error; the declarator is not optional.  */
  /* APPLE LOCAL blocks 6339747 */
  if (!declarator && dcl_kind != CP_PARSER_DECLARATOR_BLOCK)
    FUNC19 (parser, "expected declarator");

  /* If we entered a scope, we must exit it now.  */
  if (pushed_scope)
    FUNC32 (pushed_scope);

  parser->default_arg_ok_p = saved_default_arg_ok_p;
  parser->in_declarator_p = saved_in_declarator_p;

  return declarator;
}
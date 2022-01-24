#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
struct TYPE_17__ {scalar_t__ type; scalar_t__ keyword; } ;
typedef  TYPE_1__ cp_token ;
struct TYPE_18__ {int /*<<< orphan*/  lexer; } ;
typedef  TYPE_2__ cp_parser ;
typedef  int /*<<< orphan*/  cp_id_kind ;

/* Variables and functions */
 int /*<<< orphan*/  ADDR_EXPR ; 
 scalar_t__ CPP_AND ; 
 scalar_t__ CPP_NAME ; 
 scalar_t__ CPP_NESTED_NAME_SPECIFIER ; 
 scalar_t__ CPP_RSHIFT ; 
 scalar_t__ CPP_SCOPE ; 
 scalar_t__ CPP_TEMPLATE_ID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ INDIRECT_REF ; 
 scalar_t__ OFFSET_REF ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ RID_OPERATOR ; 
 scalar_t__ SCOPE_REF ; 
 scalar_t__ TEMPLATE_DECL ; 
 scalar_t__ TEMPLATE_PARM_INDEX ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ TYPE_DECL ; 
 scalar_t__ UNBOUND_CLASS_TEMPLATE ; 
 scalar_t__ VAR_DECL ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,char*) ; 
 scalar_t__ FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int,int,int*,int,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*) ; 
 scalar_t__ FUNC15 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*,int,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_2__*) ; 
 int /*<<< orphan*/  error_mark_node ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  none_type ; 

__attribute__((used)) static tree
FUNC23 (cp_parser* parser)
{
  tree argument;
  bool template_p;
  bool address_p;
  bool maybe_type_id = false;
  cp_token *token;
  cp_id_kind idk;

  /* There's really no way to know what we're looking at, so we just
     try each alternative in order.

       [temp.arg]

       In a template-argument, an ambiguity between a type-id and an
       expression is resolved to a type-id, regardless of the form of
       the corresponding template-parameter.

     Therefore, we try a type-id first.  */
  FUNC16 (parser);
  argument = FUNC19 (parser);
  /* If there was no error parsing the type-id but the next token is a '>>',
     we probably found a typo for '> >'. But there are type-id which are
     also valid expressions. For instance:

     struct X { int operator >> (int); };
     template <int V> struct Foo {};
     Foo<X () >> 5> r;

     Here 'X()' is a valid type-id of a function type, but the user just
     wanted to write the expression "X() >> 5". Thus, we remember that we
     found a valid type-id, but we still try to parse the argument as an
     expression to see what happens.  */
  if (!FUNC11 (parser)
      && FUNC6 (parser->lexer, CPP_RSHIFT))
    {
      maybe_type_id = true;
      FUNC8 (parser);
    }
  else
    {
      /* If the next token isn't a `,' or a `>', then this argument wasn't
      really finished. This means that the argument is not a valid
      type-id.  */
      if (!FUNC14 (parser))
	FUNC10 (parser, "expected template-argument");
      /* If that worked, we're done.  */
      if (FUNC15 (parser))
	return argument;
    }
  /* We're still not sure what the argument will be.  */
  FUNC16 (parser);
  /* Try a template.  */
  argument = FUNC12 (parser,
				      /*template_keyword_p=*/false,
				      /*check_dependency_p=*/true,
				      &template_p,
				      /*declarator_p=*/false,
				      /*optional_p=*/false);
  /* If the next token isn't a `,' or a `>', then this argument wasn't
     really finished.  */
  if (!FUNC14 (parser))
    FUNC10 (parser, "expected template-argument");
  if (!FUNC11 (parser))
    {
      /* Figure out what is being referred to.  If the id-expression
	 was for a class template specialization, then we will have a
	 TYPE_DECL at this point.  There is no need to do name lookup
	 at this point in that case.  */
      if (FUNC2 (argument) != TYPE_DECL)
	argument = FUNC13 (parser, argument,
					  none_type,
					  /*is_template=*/template_p,
					  /*is_namespace=*/false,
					  /*check_dependency=*/true,
					  /*ambiguous_decls=*/NULL);
      if (FUNC2 (argument) != TEMPLATE_DECL
	  && FUNC2 (argument) != UNBOUND_CLASS_TEMPLATE)
	FUNC10 (parser, "expected template-name");
    }
  if (FUNC15 (parser))
    return argument;
  /* It must be a non-type argument.  There permitted cases are given
     in [temp.arg.nontype]:

     -- an integral constant-expression of integral or enumeration
	type; or

     -- the name of a non-type template-parameter; or

     -- the name of an object or function with external linkage...

     -- the address of an object or function with external linkage...

     -- a pointer to member...  */
  /* Look for a non-type template parameter.  */
  if (FUNC6 (parser->lexer, CPP_NAME))
    {
      FUNC16 (parser);
      argument = FUNC17 (parser,
					       /*adress_p=*/false,
					       /*cast_p=*/false,
					       /*template_arg_p=*/true,
					       &idk);
      if (FUNC2 (argument) != TEMPLATE_PARM_INDEX
	  || !FUNC14 (parser))
	FUNC18 (parser);
      if (FUNC15 (parser))
	return argument;
    }

  /* If the next token is "&", the argument must be the address of an
     object or function with external linkage.  */
  address_p = FUNC6 (parser->lexer, CPP_AND);
  if (address_p)
    FUNC5 (parser->lexer);
  /* See if we might have an id-expression.  */
  token = FUNC7 (parser->lexer);
  if (token->type == CPP_NAME
      || token->keyword == RID_OPERATOR
      || token->type == CPP_SCOPE
      || token->type == CPP_TEMPLATE_ID
      || token->type == CPP_NESTED_NAME_SPECIFIER)
    {
      FUNC16 (parser);
      argument = FUNC17 (parser,
					       address_p,
					       /*cast_p=*/false,
					       /*template_arg_p=*/true,
					       &idk);
      if (FUNC11 (parser)
	  || !FUNC14 (parser))
	FUNC8 (parser);
      else
	{
	  if (FUNC2 (argument) == INDIRECT_REF)
	    {
	      FUNC21 (FUNC1 (argument));
	      argument = FUNC3 (argument, 0);
	    }

	  if (FUNC2 (argument) == VAR_DECL)
	    {
	      /* A variable without external linkage might still be a
		 valid constant-expression, so no error is issued here
		 if the external-linkage check fails.  */
	      if (!address_p && !FUNC0 (argument))
		FUNC18 (parser);
	    }
	  else if (FUNC22 (argument))
	    /* All overloaded functions are allowed; if the external
	       linkage test does not pass, an error will be issued
	       later.  */
	    ;
	  else if (address_p
		   && (FUNC2 (argument) == OFFSET_REF
		       || FUNC2 (argument) == SCOPE_REF))
	    /* A pointer-to-member.  */
	    ;
	  else if (FUNC2 (argument) == TEMPLATE_PARM_INDEX)
	    ;
	  else
	    FUNC18 (parser);

	  if (FUNC15 (parser))
	    {
	      if (address_p)
		argument = FUNC4 (ADDR_EXPR, argument);
	      return argument;
	    }
	}
    }
  /* If the argument started with "&", there are no other valid
     alternatives at this point.  */
  if (address_p)
    {
      FUNC10 (parser, "invalid non-type template argument");
      return error_mark_node;
    }

  /* If the argument wasn't successfully parsed as a type-id followed
     by '>>', the argument can only be a constant expression now.
     Otherwise, we try parsing the constant-expression tentatively,
     because the argument could really be a type-id.  */
  if (maybe_type_id)
    FUNC16 (parser);
  argument = FUNC9 (parser,
					    /*allow_non_constant_p=*/false,
					    /*non_constant_p=*/NULL);
  argument = FUNC20 (argument);
  if (!maybe_type_id)
    return argument;
  if (!FUNC14 (parser))
    FUNC10 (parser, "expected template-argument");
  if (FUNC15 (parser))
    return argument;
  /* We did our best to parse the argument as a non type-id, but that
     was the only alternative that matched (albeit with a '>' after
     it). We can assume it's just a typo from the user, and a
     diagnostic will then be issued.  */
  return FUNC19 (parser);
}
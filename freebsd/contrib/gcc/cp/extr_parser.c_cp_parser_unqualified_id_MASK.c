#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;
typedef  struct TYPE_17__   TYPE_16__ ;

/* Type definitions */
typedef  char* tree ;
struct TYPE_18__ {int /*<<< orphan*/  value; } ;
struct TYPE_19__ {int type; int /*<<< orphan*/  keyword; TYPE_1__ u; } ;
typedef  TYPE_2__ cp_token ;
struct TYPE_20__ {char* scope; char* object_scope; char* qualifying_scope; int /*<<< orphan*/  lexer; } ;
typedef  TYPE_3__ cp_parser ;
struct TYPE_17__ {int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIT_NOT_EXPR ; 
#define  CPP_COMPL 131 
#define  CPP_KEYWORD 130 
#define  CPP_NAME 129 
 int /*<<< orphan*/  CPP_OPEN_PAREN ; 
#define  CPP_TEMPLATE_ID 128 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  NAMESPACE_DECL ; 
 char* NULL_TREE ; 
 int /*<<< orphan*/  RID_OPERATOR ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int const) ; 
 TYPE_16__* FUNC10 (int /*<<< orphan*/ ,int) ; 
 TYPE_2__* FUNC11 (int /*<<< orphan*/ ) ; 
 char* FUNC12 (TYPE_3__*,int,int,int /*<<< orphan*/ ,int,int,int) ; 
 char* FUNC13 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*,char*) ; 
 char* FUNC15 (TYPE_3__*) ; 
 char* FUNC16 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_3__*) ; 
 char* FUNC20 (TYPE_3__*,int,int,int) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC22 (char*,char*,...) ; 
 char* error_mark_node ; 
 int /*<<< orphan*/  FUNC23 (int) ; 
 int /*<<< orphan*/  none_type ; 

__attribute__((used)) static tree
FUNC24 (cp_parser* parser,
			  bool template_keyword_p,
			  bool check_dependency_p,
			  bool declarator_p,
			  bool optional_p)
{
  cp_token *token;

  /* Peek at the next token.  */
  token = FUNC11 (parser->lexer);

  switch (token->type)
    {
    case CPP_NAME:
      {
	tree id;

	/* We don't know yet whether or not this will be a
	   template-id.  */
	FUNC18 (parser);
	/* Try a template-id.  */
	id = FUNC20 (parser, template_keyword_p,
				    check_dependency_p,
				    declarator_p);
	/* If it worked, we're done.  */
	if (FUNC17 (parser))
	  return id;
	/* Otherwise, it's an ordinary identifier.  */
	return FUNC15 (parser);
      }

    case CPP_TEMPLATE_ID:
      return FUNC20 (parser, template_keyword_p,
				    check_dependency_p,
				    declarator_p);

    case CPP_COMPL:
      {
	tree type_decl;
	tree qualifying_scope;
	tree object_scope;
	tree scope;
	bool done;

	/* Consume the `~' token.  */
	FUNC8 (parser->lexer);
	/* Parse the class-name.  The standard, as written, seems to
	   say that:

	     template <typename T> struct S { ~S (); };
	     template <typename T> S<T>::~S() {}

	   is invalid, since `~' must be followed by a class-name, but
	   `S<T>' is dependent, and so not known to be a class.
	   That's not right; we need to look in uninstantiated
	   templates.  A further complication arises from:

	     template <typename T> void f(T t) {
	       t.T::~T();
	     }

	   Here, it is not possible to look up `T' in the scope of `T'
	   itself.  We must look in both the current scope, and the
	   scope of the containing complete expression.

	   Yet another issue is:

	     struct S {
	       int S;
	       ~S();
	     };

	     S::~S() {}

	   The standard does not seem to say that the `S' in `~S'
	   should refer to the type `S' and not the data member
	   `S::S'.  */

	/* DR 244 says that we look up the name after the "~" in the
	   same scope as we looked up the qualifying name.  That idea
	   isn't fully worked out; it's more complicated than that.  */
	scope = parser->scope;
	object_scope = parser->object_scope;
	qualifying_scope = parser->qualifying_scope;

	/* Check for invalid scopes.  */
	if (scope == error_mark_node)
	  {
	    if (FUNC9 (parser->lexer, CPP_NAME))
	      FUNC8 (parser->lexer);
	    return error_mark_node;
	  }
	if (scope && FUNC2 (scope) == NAMESPACE_DECL)
	  {
	    if (!FUNC21 (parser))
	      FUNC22 ("scope %qT before %<~%> is not a class-name", scope);
	    FUNC19 (parser);
	    if (FUNC9 (parser->lexer, CPP_NAME))
	      FUNC8 (parser->lexer);
	    return error_mark_node;
	  }
	FUNC23 (!scope || FUNC4 (scope));

	/* If the name is of the form "X::~X" it's OK.  */
	token = FUNC11 (parser->lexer);
	if (scope
	    && token->type == CPP_NAME
	    && (FUNC10 (parser->lexer, 2)->type
		== CPP_OPEN_PAREN)
	    && FUNC7 (token->u.value, scope))
	  {
	    FUNC8 (parser->lexer);
	    return FUNC5 (BIT_NOT_EXPR, scope);
	  }

	/* If there was an explicit qualification (S::~T), first look
	   in the scope given by the qualification (i.e., S).  */
	done = false;
	type_decl = NULL_TREE;
	if (scope)
	  {
	    FUNC18 (parser);
	    type_decl = FUNC12 (parser,
					      /*typename_keyword_p=*/false,
					      /*template_keyword_p=*/false,
					      none_type,
					      /*check_dependency=*/false,
					      /*class_head_p=*/false,
					      declarator_p);
	    if (FUNC17 (parser))
	      done = true;
	  }
	/* In "N::S::~S", look in "N" as well.  */
	if (!done && scope && qualifying_scope)
	  {
	    FUNC18 (parser);
	    parser->scope = qualifying_scope;
	    parser->object_scope = NULL_TREE;
	    parser->qualifying_scope = NULL_TREE;
	    type_decl
	      = FUNC12 (parser,
				      /*typename_keyword_p=*/false,
				      /*template_keyword_p=*/false,
				      none_type,
				      /*check_dependency=*/false,
				      /*class_head_p=*/false,
				      declarator_p);
	    if (FUNC17 (parser))
	      done = true;
	  }
	/* In "p->S::~T", look in the scope given by "*p" as well.  */
	else if (!done && object_scope)
	  {
	    FUNC18 (parser);
	    parser->scope = object_scope;
	    parser->object_scope = NULL_TREE;
	    parser->qualifying_scope = NULL_TREE;
	    type_decl
	      = FUNC12 (parser,
				      /*typename_keyword_p=*/false,
				      /*template_keyword_p=*/false,
				      none_type,
				      /*check_dependency=*/false,
				      /*class_head_p=*/false,
				      declarator_p);
	    if (FUNC17 (parser))
	      done = true;
	  }
	/* Look in the surrounding context.  */
	if (!done)
	  {
	    parser->scope = NULL_TREE;
	    parser->object_scope = NULL_TREE;
	    parser->qualifying_scope = NULL_TREE;
	    type_decl
	      = FUNC12 (parser,
				      /*typename_keyword_p=*/false,
				      /*template_keyword_p=*/false,
				      none_type,
				      /*check_dependency=*/false,
				      /*class_head_p=*/false,
				      declarator_p);
	  }
	/* If an error occurred, assume that the name of the
	   destructor is the same as the name of the qualifying
	   class.  That allows us to keep parsing after running
	   into ill-formed destructor names.  */
	if (type_decl == error_mark_node && scope)
	  return FUNC5 (BIT_NOT_EXPR, scope);
	else if (type_decl == error_mark_node)
	  return error_mark_node;

	/* Check that destructor name and scope match.  */
	if (declarator_p && scope && !FUNC6 (scope, type_decl))
	  {
	    if (!FUNC21 (parser))
	      FUNC22 ("declaration of %<~%T%> as member of %qT",
		     type_decl, scope);
	    FUNC19 (parser);
	    return error_mark_node;
	  }

	/* [class.dtor]

	   A typedef-name that names a class shall not be used as the
	   identifier in the declarator for a destructor declaration.  */
	if (declarator_p
	    && !FUNC0 (type_decl)
	    && !FUNC1 (type_decl)
	    && !FUNC21 (parser))
	  FUNC22 ("typedef-name %qD used as destructor declarator",
		 type_decl);

	return FUNC5 (BIT_NOT_EXPR, FUNC3 (type_decl));
      }

    case CPP_KEYWORD:
      if (token->keyword == RID_OPERATOR)
	{
	  tree id;

	  /* This could be a template-id, so we try that first.  */
	  FUNC18 (parser);
	  /* Try a template-id.  */
	  id = FUNC20 (parser, template_keyword_p,
				      /*check_dependency_p=*/true,
				      declarator_p);
	  /* If that worked, we're done.  */
	  if (FUNC17 (parser))
	    return id;
	  /* We still don't know whether we're looking at an
	     operator-function-id or a conversion-function-id.  */
	  FUNC18 (parser);
	  /* Try an operator-function-id.  */
	  id = FUNC16 (parser);
	  /* If that didn't work, try a conversion-function-id.  */
	  if (!FUNC17 (parser))
	    id = FUNC13 (parser);

	  return id;
	}
      /* Fall through.  */

    default:
      if (optional_p)
	return NULL_TREE;
      FUNC14 (parser, "expected unqualified-id");
      return error_mark_node;
    }
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {scalar_t__ type; scalar_t__ keyword; } ;
typedef  TYPE_1__ cp_token ;
struct TYPE_17__ {int /*<<< orphan*/  lexer; } ;
typedef  TYPE_2__ cp_parser ;

/* Variables and functions */
 scalar_t__ CPP_EOF ; 
 scalar_t__ CPP_EQ ; 
 scalar_t__ CPP_GREATER ; 
 scalar_t__ CPP_LESS ; 
 scalar_t__ CPP_NAME ; 
 scalar_t__ CPP_OPEN_BRACE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ RID_ATTRIBUTE ; 
 scalar_t__ RID_EXPORT ; 
 scalar_t__ RID_EXTERN ; 
 scalar_t__ RID_INLINE ; 
 scalar_t__ RID_MAX ; 
 scalar_t__ RID_NAMESPACE ; 
 scalar_t__ RID_STATIC ; 
 scalar_t__ RID_TEMPLATE ; 
 scalar_t__ FUNC1 () ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 scalar_t__ FUNC8 (TYPE_2__*,int*) ; 
 scalar_t__ FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  declarator_obstack ; 
 void* FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,void*) ; 
 int pedantic ; 

__attribute__((used)) static void
FUNC16 (cp_parser* parser)
{
  cp_token token1;
  cp_token token2;
  int saved_pedantic;
  void *p;

  /* Check for the `__extension__' keyword.  */
  if (FUNC8 (parser, &saved_pedantic))
    {
      /* Parse the qualified declaration.  */
      FUNC16 (parser);
      /* Restore the PEDANTIC flag.  */
      pedantic = saved_pedantic;

      return;
    }

  /* Try to figure out what kind of declaration is present.  */
  token1 = *FUNC3 (parser->lexer);

  if (token1.type != CPP_EOF)
    token2 = *FUNC2 (parser->lexer, 2);
  else
    {
      token2.type = CPP_EOF;
      token2.keyword = RID_MAX;
    }

  /* Get the high-water mark for the DECLARATOR_OBSTACK.  */
  p = FUNC14 (&declarator_obstack, 0);

  /* If the next token is `extern' and the following token is a string
     literal, then we have a linkage specification.  */
  if (token1.keyword == RID_EXTERN
      && FUNC9 (&token2))
    FUNC10 (parser);
  /* If the next token is `template', then we have either a template
     declaration, an explicit instantiation, or an explicit
     specialization.  */
  else if (token1.keyword == RID_TEMPLATE)
    {
      /* `template <>' indicates a template specialization.  */
      if (token2.type == CPP_LESS
	  && FUNC2 (parser->lexer, 3)->type == CPP_GREATER)
	FUNC7 (parser);
      /* `template <' indicates a template declaration.  */
      else if (token2.type == CPP_LESS)
	FUNC13 (parser, /*member_p=*/false);
      /* Anything else must be an explicit instantiation.  */
      else
	FUNC6 (parser);
    }
  /* If the next token is `export', then we have a template
     declaration.  */
  else if (token1.keyword == RID_EXPORT)
    FUNC13 (parser, /*member_p=*/false);
  /* If the next token is `extern', 'static' or 'inline' and the one
     after that is `template', we have a GNU extended explicit
     instantiation directive.  */
  else if (FUNC4 (parser)
	   && (token1.keyword == RID_EXTERN
	       || token1.keyword == RID_STATIC
	       || token1.keyword == RID_INLINE)
	   && token2.keyword == RID_TEMPLATE)
    FUNC6 (parser);
  /* If the next token is `namespace', check for a named or unnamed
     namespace definition.  */
  else if (token1.keyword == RID_NAMESPACE
	   && (/* A named namespace definition.  */
	       (token2.type == CPP_NAME
		&& (FUNC2 (parser->lexer, 3)->type
		    != CPP_EQ))
	       /* An unnamed namespace definition.  */
	       || token2.type == CPP_OPEN_BRACE
	       || token2.keyword == RID_ATTRIBUTE))
    FUNC11 (parser);
  /* Objective-C++ declaration/definition.  */
  else if (FUNC1 () && FUNC0 (token1.keyword))
    FUNC12 (parser);
  /* We must have either a block declaration or a function
     definition.  */
  else
    /* Try to parse a block-declaration, or a function-definition.  */
    FUNC5 (parser, /*statement_p=*/false);

  /* Free any declarators allocated.  */
  FUNC15 (&declarator_obstack, p);
}
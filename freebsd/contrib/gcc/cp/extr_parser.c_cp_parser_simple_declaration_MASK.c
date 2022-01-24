#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
struct TYPE_19__ {scalar_t__ type; } ;
typedef  TYPE_1__ cp_token ;
struct TYPE_20__ {int /*<<< orphan*/  lexer; } ;
typedef  TYPE_2__ cp_parser ;
struct TYPE_21__ {scalar_t__ any_specifiers_p; int /*<<< orphan*/  type; } ;
typedef  TYPE_3__ cp_decl_specifier_seq ;

/* Variables and functions */
 scalar_t__ CPP_COMMA ; 
 scalar_t__ CPP_OPEN_PAREN ; 
 scalar_t__ CPP_SEMICOLON ; 
 int /*<<< orphan*/  CP_PARSER_FLAGS_OPTIONAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,TYPE_3__*,int*) ; 
 scalar_t__ FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,char*) ; 
 scalar_t__ FUNC8 (TYPE_2__*) ; 
 scalar_t__ FUNC9 (TYPE_2__*,TYPE_3__*,int /*<<< orphan*/ *,int,int,int,int*) ; 
 scalar_t__ FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 scalar_t__ FUNC13 (TYPE_2__*) ; 
 int /*<<< orphan*/  dk_deferred ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 scalar_t__ error_mark_node ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC20 () ; 

__attribute__((used)) static void
FUNC21 (cp_parser* parser,
			      bool function_definition_allowed_p)
{
  cp_decl_specifier_seq decl_specifiers;
  int declares_class_or_enum;
  bool saw_declarator;

  /* Defer access checks until we know what is being declared; the
     checks for names appearing in the decl-specifier-seq should be
     done as if we were in the scope of the thing being declared.  */
  FUNC18 (dk_deferred);

  /* Parse the decl-specifier-seq.  We have to keep track of whether
     or not the decl-specifier-seq declares a named class or
     enumeration type, since that is the only case in which the
     init-declarator-list is allowed to be empty.

     [dcl.dcl]

     In a simple-declaration, the optional init-declarator-list can be
     omitted only when declaring a class or enumeration, that is when
     the decl-specifier-seq contains either a class-specifier, an
     elaborated-type-specifier, or an enum-specifier.  */
  FUNC5 (parser,
				CP_PARSER_FLAGS_OPTIONAL,
				&decl_specifiers,
				&declares_class_or_enum);
  /* We no longer need to defer access checks.  */
  FUNC20 ();

  /* In a block scope, a valid declaration must always have a
     decl-specifier-seq.  By not trying to parse declarators, we can
     resolve the declaration/expression ambiguity more quickly.  */
  if (!function_definition_allowed_p
      && !decl_specifiers.any_specifiers_p)
    {
      FUNC7 (parser, "expected declaration");
      goto done;
    }

  /* If the next two tokens are both identifiers, the code is
     erroneous. The usual cause of this situation is code like:

       T t;

     where "T" should name a type -- but does not.  */
  if (!decl_specifiers.type
      && FUNC10 (parser))
    {
      /* If parsing tentatively, we should commit; we really are
	 looking at a declaration.  */
      FUNC4 (parser);
      /* Give up.  */
      goto done;
    }

  /* If we have seen at least one decl-specifier, and the next token
     is not a parenthesis, then we must be looking at a declaration.
     (After "int (" we might be looking at a functional cast.)  */
  if (decl_specifiers.any_specifiers_p
      && FUNC2 (parser->lexer, CPP_OPEN_PAREN))
    FUNC4 (parser);

  /* Keep going until we hit the `;' at the end of the simple
     declaration.  */
  saw_declarator = false;
  while (FUNC2 (parser->lexer,
				     CPP_SEMICOLON))
    {
      cp_token *token;
      bool function_definition_p;
      tree decl;

      if (saw_declarator)
	{
	  /* If we are processing next declarator, coma is expected */
	  token = FUNC3 (parser->lexer);
	  FUNC15 (token->type == CPP_COMMA);
	  FUNC0 (parser->lexer);
	}
      else
	saw_declarator = true;

      /* Parse the init-declarator.  */
      decl = FUNC9 (parser, &decl_specifiers,
					/*checks=*/NULL,
					function_definition_allowed_p,
					/*member_p=*/false,
					declares_class_or_enum,
					&function_definition_p);
      /* If an error occurred while parsing tentatively, exit quickly.
	 (That usually happens when in the body of a function; each
	 statement is treated as a declaration-statement until proven
	 otherwise.)  */
      if (FUNC8 (parser))
	goto done;
      /* Handle function definitions specially.  */
      if (function_definition_p)
	{
	  /* If the next token is a `,', then we are probably
	     processing something like:

	       void f() {}, *p;

	     which is erroneous.  */
	  if (FUNC1 (parser->lexer, CPP_COMMA))
	    FUNC14 ("mixing declarations and function-definitions is forbidden");
	  /* Otherwise, we're done with the list of declarators.  */
	  else
	    {
	      FUNC17 ();
	      return;
	    }
	}
      /* The next token should be either a `,' or a `;'.  */
      token = FUNC3 (parser->lexer);
      /* If it's a `,', there are more declarators to come.  */
      if (token->type == CPP_COMMA)
	/* will be consumed next time around */;
      /* If it's a `;', we are done.  */
      else if (token->type == CPP_SEMICOLON)
	break;
      /* Anything else is an error.  */
      else
	{
	  /* If we have already issued an error message we don't need
	     to issue another one.  */
	  if (decl != error_mark_node
	      || FUNC13 (parser))
	    FUNC7 (parser, "expected %<,%> or %<;%>");
	  /* Skip tokens until we reach the end of the statement.  */
	  FUNC12 (parser);
	  /* If the next token is now a `;', consume it.  */
	  if (FUNC1 (parser->lexer, CPP_SEMICOLON))
	    FUNC0 (parser->lexer);
	  goto done;
	}
      /* After the first time around, a function-definition is not
	 allowed -- even if it was OK at first.  For example:

	   int i, f() {}

	 is not valid.  */
      function_definition_allowed_p = false;
    }

  /* Issue an error message if no declarators are present, and the
     decl-specifier-seq does not itself declare a class or
     enumeration.  */
  if (!saw_declarator)
    {
      if (FUNC6 (parser))
	FUNC19 (&decl_specifiers);
      /* Perform any deferred access checks.  */
      FUNC16 ();
    }

  /* Consume the `;'.  */
  FUNC11 (parser, CPP_SEMICOLON, "`;'");

 done:
  FUNC17 ();
}
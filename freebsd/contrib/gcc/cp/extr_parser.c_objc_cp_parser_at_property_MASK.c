#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
struct TYPE_9__ {scalar_t__ type; } ;
typedef  TYPE_1__ cp_token ;
struct TYPE_10__ {int /*<<< orphan*/  lexer; } ;
typedef  TYPE_2__ cp_parser ;

/* Variables and functions */
 scalar_t__ CPP_CLOSE_PAREN ; 
 scalar_t__ CPP_COLON ; 
 scalar_t__ CPP_COMMA ; 
 scalar_t__ CPP_EOF ; 
 scalar_t__ CPP_EQ ; 
 scalar_t__ CPP_OPEN_PAREN ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ RID_GETTER ; 
 scalar_t__ RID_NONATOMIC ; 
 scalar_t__ RID_READONLY ; 
 scalar_t__ RID_SETTER ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 
 scalar_t__ FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int,scalar_t__) ; 
 scalar_t__* ridpointers ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void 
FUNC10 (cp_parser *parser)
{
  cp_token *token;

  FUNC8 (0, NULL_TREE);
  /* Consume @property */
  FUNC0 (parser->lexer);
  token = FUNC3 (parser->lexer);
  if (token->type == CPP_OPEN_PAREN)
    {
      FUNC0 (parser->lexer);
      while (token->type != CPP_CLOSE_PAREN && token->type != CPP_EOF)
	{
	   tree node;
	   /* property has attribute list. */
	   /* Consume '(' */
	   node = FUNC4 (parser);
	   if (node == ridpointers [(int) RID_READONLY])
	    {
	      /* Do the readyonly thing. */
	      FUNC8 (1, NULL_TREE);
	    }	
	  else if (node == ridpointers [(int) RID_GETTER]
		   || node == ridpointers [(int) RID_SETTER])
	    {
	      /* Do the getter/setter attribute. */
	      token = FUNC0 (parser->lexer);
	      if (token->type == CPP_EQ)
		{
		  /* APPLE LOCAL radar 4675792 */
		  tree attr_ident = FUNC5 (parser);
		  int num;
		  if (node == ridpointers [(int) RID_GETTER])
		    num = 2;
		  else
		    {
		      num = 3;
		      /* Consume the ':' which must always follow the setter name. */
		      if (FUNC1 (parser->lexer, CPP_COLON))
			  FUNC0 (parser->lexer);
		    }
		  FUNC8 (num, attr_ident);
		}
	      else
		{
		  FUNC6 ("getter/setter attribute must be followed by '='");
		  break;
		}
	    }
	  /* APPLE LOCAL begin radar 4947014 - objc atomic property */
	  else if (node == ridpointers [(int) RID_NONATOMIC])
	    {
	      FUNC8 (13, NULL_TREE);
	    }
	  /* APPLE LOCAL end radar 4947014 - objc atomic property */
	  else
	    {
	      FUNC6 ("unknown property attribute");
	      break;
	    }
	  /* APPLE LOCAL begin radar 6302949 */
	  if (FUNC2 (parser->lexer, CPP_COMMA)
	      && FUNC2 (parser->lexer, CPP_CLOSE_PAREN)
	      && FUNC2 (parser->lexer, CPP_EOF))
	    FUNC9 (0, "property attributes must be separated by a comma");
	  /* APPLE LOCAL end radar 6302949 */
	  if (FUNC1 (parser->lexer, CPP_COMMA))
	    FUNC0 (parser->lexer);
	  token = FUNC3 (parser->lexer);	  
	}
	if (token->type != CPP_CLOSE_PAREN)
	  {
	    FUNC6 ("syntax error in @property's attribute declaration");
	  }
	/* Consume ')' */
	FUNC0 (parser->lexer);
    }
    FUNC7 (parser);
}
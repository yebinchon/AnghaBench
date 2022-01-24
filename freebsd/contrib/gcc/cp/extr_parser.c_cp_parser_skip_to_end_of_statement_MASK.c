#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int type; } ;
typedef  TYPE_1__ cp_token ;
struct TYPE_6__ {int /*<<< orphan*/  lexer; } ;
typedef  TYPE_2__ cp_parser ;

/* Variables and functions */
#define  CPP_CLOSE_BRACE 132 
#define  CPP_EOF 131 
#define  CPP_OPEN_BRACE 130 
#define  CPP_PRAGMA_EOL 129 
#define  CPP_SEMICOLON 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2 (cp_parser* parser)
{
  unsigned nesting_depth = 0;

  while (true)
    {
      cp_token *token = FUNC1 (parser->lexer);

      switch (token->type)
	{
	case CPP_EOF:
	case CPP_PRAGMA_EOL:
	  /* If we've run out of tokens, stop.  */
	  return;

	case CPP_SEMICOLON:
	  /* If the next token is a `;', we have reached the end of the
	     statement.  */
	  if (!nesting_depth)
	    return;
	  break;

	case CPP_CLOSE_BRACE:
	  /* If this is a non-nested '}', stop before consuming it.
	     That way, when confronted with something like:

	       { 3 + }

	     we stop before consuming the closing '}', even though we
	     have not yet reached a `;'.  */
	  if (nesting_depth == 0)
	    return;

	  /* If it is the closing '}' for a block that we have
	     scanned, stop -- but only after consuming the token.
	     That way given:

		void f g () { ... }
		typedef int I;

	     we will stop after the body of the erroneously declared
	     function, but before consuming the following `typedef'
	     declaration.  */
	  if (--nesting_depth == 0)
	    {
	      FUNC0 (parser->lexer);
	      return;
	    }

	case CPP_OPEN_BRACE:
	  ++nesting_depth;
	  break;

	default:
	  break;
	}

      /* Consume the token.  */
      FUNC0 (parser->lexer);
    }
}
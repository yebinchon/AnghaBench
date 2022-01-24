#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ type; } ;
typedef  TYPE_1__ c_token ;
struct TYPE_9__ {int in_pragma; int error; } ;
typedef  TYPE_2__ c_parser ;

/* Variables and functions */
 scalar_t__ CPP_EOF ; 
 scalar_t__ CPP_PRAGMA_EOL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 TYPE_1__* FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void
FUNC4 (c_parser *parser)
{
  FUNC3 (parser->in_pragma);
  parser->in_pragma = false;

  if (!FUNC2 (parser, CPP_PRAGMA_EOL, "expected end of line"))
    while (true)
      {
	c_token *token = FUNC1 (parser);
	if (token->type == CPP_EOF)
	  break;
	if (token->type == CPP_PRAGMA_EOL)
	  {
	    FUNC0 (parser);
	    break;
	  }
	FUNC0 (parser);
      }

  parser->error = false;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ type; int /*<<< orphan*/  value; } ;
typedef  TYPE_1__ c_token ;
struct TYPE_8__ {int error; } ;
typedef  TYPE_2__ c_parser ;

/* Variables and functions */
 scalar_t__ CPP_KEYWORD ; 
 scalar_t__ CPP_NAME ; 
 int /*<<< orphan*/  FUNC0 (char const*,scalar_t__,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC3 (c_parser *parser, const char *gmsgid)
{
  c_token *token = FUNC1 (parser);
  if (parser->error)
    return;
  parser->error = true;
  if (!gmsgid)
    return;
  /* This diagnostic makes more sense if it is tagged to the line of
     the token we just peeked at.  */
  FUNC2 (token);
  FUNC0 (gmsgid,
		 /* Because c_parse_error does not understand
		    CPP_KEYWORD, keywords are treated like
		    identifiers.  */
		 (token->type == CPP_KEYWORD ? CPP_NAME : token->type),
		 token->value);
}
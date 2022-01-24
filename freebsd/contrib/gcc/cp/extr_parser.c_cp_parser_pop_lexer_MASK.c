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
struct TYPE_5__ {TYPE_2__* lexer; } ;
typedef  TYPE_1__ cp_parser ;
struct TYPE_6__ {int /*<<< orphan*/  next_token; struct TYPE_6__* next; } ;
typedef  TYPE_2__ cp_lexer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2 (cp_parser *parser)
{
  cp_lexer *lexer = parser->lexer;
  parser->lexer = lexer->next;
  FUNC0 (lexer);

  /* Put the current source position back where it was before this
     lexer was pushed.  */
  FUNC1 (parser->lexer->next_token);
}
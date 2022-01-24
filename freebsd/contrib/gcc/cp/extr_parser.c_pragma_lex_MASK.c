#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
typedef  enum cpp_ttype { ____Placeholder_cpp_ttype } cpp_ttype ;
struct TYPE_6__ {int /*<<< orphan*/  value; } ;
struct TYPE_7__ {int type; TYPE_1__ u; } ;
typedef  TYPE_2__ cp_token ;
struct TYPE_8__ {int /*<<< orphan*/  lexer; } ;

/* Variables and functions */
 int CPP_EOF ; 
 int CPP_KEYWORD ; 
 int CPP_NAME ; 
 int CPP_PRAGMA_EOL ; 
 int CPP_STRING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int,int) ; 
 TYPE_3__* the_parser ; 

enum cpp_ttype
FUNC3 (tree *value)
{
  cp_token *tok;
  enum cpp_ttype ret;

  tok = FUNC1 (the_parser->lexer);

  ret = tok->type;
  *value = tok->u.value;

  if (ret == CPP_PRAGMA_EOL || ret == CPP_EOF)
    ret = CPP_EOF;
  else if (ret == CPP_STRING)
    *value = FUNC2 (the_parser, false, false);
  else
    {
      FUNC0 (the_parser->lexer);
      if (ret == CPP_KEYWORD)
	ret = CPP_NAME;
    }

  return ret;
}
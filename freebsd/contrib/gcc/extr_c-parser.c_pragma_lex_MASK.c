#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
typedef  enum cpp_ttype { ____Placeholder_cpp_ttype } cpp_ttype ;
struct TYPE_3__ {int type; int /*<<< orphan*/  value; } ;
typedef  TYPE_1__ c_token ;

/* Variables and functions */
 int CPP_EOF ; 
 int CPP_KEYWORD ; 
 int CPP_NAME ; 
 int CPP_PRAGMA_EOL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  the_parser ; 

enum cpp_ttype
FUNC2 (tree *value)
{
  c_token *tok = FUNC1 (the_parser);
  enum cpp_ttype ret = tok->type;

  *value = tok->value;
  if (ret == CPP_PRAGMA_EOL || ret == CPP_EOF)
    ret = CPP_EOF;
  else
    {
      if (ret == CPP_KEYWORD)
	ret = CPP_NAME;
      FUNC0 (the_parser);
    }

  return ret;
}
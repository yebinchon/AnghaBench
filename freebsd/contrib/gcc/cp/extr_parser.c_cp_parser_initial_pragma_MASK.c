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
typedef  int /*<<< orphan*/ * tree ;
struct TYPE_5__ {int /*<<< orphan*/ * value; } ;
struct TYPE_6__ {scalar_t__ pragma_kind; scalar_t__ type; TYPE_1__ u; } ;
typedef  TYPE_2__ cp_token ;

/* Variables and functions */
 scalar_t__ CPP_EOF ; 
 scalar_t__ CPP_PRAGMA_EOL ; 
 scalar_t__ CPP_STRING ; 
 scalar_t__ PRAGMA_GCC_PCH_PREPROCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  parse_in ; 

__attribute__((used)) static void
FUNC4 (cp_token *first_token)
{
  tree name = NULL;

  FUNC2 (NULL, first_token);
  if (first_token->pragma_kind != PRAGMA_GCC_PCH_PREPROCESS)
    return;

  FUNC2 (NULL, first_token);
  if (first_token->type == CPP_STRING)
    {
      name = first_token->u.value;

      FUNC2 (NULL, first_token);
      if (first_token->type != CPP_PRAGMA_EOL)
	FUNC3 ("junk at end of %<#pragma GCC pch_preprocess%>");
    }
  else
    FUNC3 ("expected string literal");

  /* Skip to the end of the pragma.  */
  while (first_token->type != CPP_PRAGMA_EOL && first_token->type != CPP_EOF)
    FUNC2 (NULL, first_token);

  /* Now actually load the PCH file.  */
  if (name)
    FUNC1 (parse_in, FUNC0 (name));

  /* Read one more token to return to our caller.  We have to do this
     after reading the PCH file in, since its pointers have to be
     live.  */
  FUNC2 (NULL, first_token);
}
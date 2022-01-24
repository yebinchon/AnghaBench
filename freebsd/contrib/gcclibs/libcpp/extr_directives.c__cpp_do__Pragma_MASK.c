#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  str; } ;
struct TYPE_12__ {TYPE_2__ val; } ;
typedef  TYPE_3__ cpp_token ;
struct TYPE_10__ {int /*<<< orphan*/  type; } ;
struct TYPE_13__ {TYPE_1__ directive_result; } ;
typedef  TYPE_4__ cpp_reader ;

/* Variables and functions */
 int /*<<< orphan*/  CPP_DL_ERROR ; 
 int /*<<< orphan*/  CPP_PADDING ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC2 (TYPE_4__*) ; 

void
FUNC3 (cpp_reader *pfile)
{
  const cpp_token *string = FUNC2 (pfile);
  pfile->directive_result.type = CPP_PADDING;

  if (string)
    FUNC1 (pfile, &string->val.str);
  else
    FUNC0 (pfile, CPP_DL_ERROR,
	       "_Pragma takes a parenthesized string literal");
}
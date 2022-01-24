#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
struct TYPE_4__ {int /*<<< orphan*/  value; } ;
struct TYPE_5__ {TYPE_1__ u; } ;
typedef  TYPE_2__ cp_token ;
typedef  int /*<<< orphan*/  cp_parser ;

/* Variables and functions */
 int /*<<< orphan*/  CPP_NAME ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  error_mark_node ; 

__attribute__((used)) static tree
FUNC1 (cp_parser* parser)
{
  cp_token *token;

  /* Look for the identifier.  */
  token = FUNC0 (parser, CPP_NAME, "identifier");
  /* Return the value.  */
  return token ? token->u.value : error_mark_node;
}
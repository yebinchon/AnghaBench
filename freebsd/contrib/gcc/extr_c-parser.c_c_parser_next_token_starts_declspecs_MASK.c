#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ id_kind; } ;
typedef  TYPE_1__ c_token ;
typedef  int /*<<< orphan*/  c_parser ;
struct TYPE_6__ {scalar_t__ type; } ;

/* Variables and functions */
 scalar_t__ CPP_DOT ; 
 scalar_t__ C_ID_CLASSNAME ; 
 TYPE_4__* FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static inline bool
FUNC3 (c_parser *parser)
{
  c_token *token = FUNC1 (parser);
  /* APPLE LOCAL begin radar 5277239 */
  /* Yes, we can have CLASS.method to mean property-style dot-syntax 
     notation to call a class method (equiv to [CLASS meth]). */
  return FUNC2 (token) 
	 && (token->id_kind != C_ID_CLASSNAME 
	     || FUNC0 (parser)->type != CPP_DOT);
  /* APPLE LOCAL end radar 5277239 */
}
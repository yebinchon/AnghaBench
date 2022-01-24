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
typedef  void* tree ;
typedef  int /*<<< orphan*/  special_function_kind ;
struct TYPE_7__ {int /*<<< orphan*/  sfk; void* unqualified_name; void* qualifying_scope; } ;
struct TYPE_6__ {TYPE_2__ id; } ;
struct TYPE_8__ {TYPE_1__ u; } ;
typedef  TYPE_3__ cp_declarator ;

/* Variables and functions */
 scalar_t__ BIT_NOT_EXPR ; 
 scalar_t__ IDENTIFIER_NODE ; 
 scalar_t__ TEMPLATE_ID_EXPR ; 
 scalar_t__ FUNC0 (void*) ; 
 void* FUNC1 (void*) ; 
 scalar_t__ FUNC2 (void*) ; 
 int /*<<< orphan*/  cdk_id ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 TYPE_3__* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static cp_declarator *
FUNC5 (tree qualifying_scope, tree unqualified_name,
		    special_function_kind sfk)
{
  cp_declarator *declarator;

  /* It is valid to write:

       class C { void f(); };
       typedef C D;
       void D::f();

     The standard is not clear about whether `typedef const C D' is
     legal; as of 2002-09-15 the committee is considering that
     question.  EDG 3.0 allows that syntax.  Therefore, we do as
     well.  */
  if (qualifying_scope && FUNC2 (qualifying_scope))
    qualifying_scope = FUNC1 (qualifying_scope);

  FUNC3 (FUNC0 (unqualified_name) == IDENTIFIER_NODE
	      || FUNC0 (unqualified_name) == BIT_NOT_EXPR
	      || FUNC0 (unqualified_name) == TEMPLATE_ID_EXPR);

  declarator = FUNC4 (cdk_id);
  declarator->u.id.qualifying_scope = qualifying_scope;
  declarator->u.id.unqualified_name = unqualified_name;
  declarator->u.id.sfk = sfk;

  return declarator;
}
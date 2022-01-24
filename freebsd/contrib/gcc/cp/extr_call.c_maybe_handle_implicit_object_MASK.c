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
typedef  int /*<<< orphan*/  tree ;
struct TYPE_7__ {TYPE_2__* next; } ;
struct TYPE_8__ {scalar_t__ kind; int /*<<< orphan*/  type; TYPE_1__ u; scalar_t__ this_p; } ;
typedef  TYPE_2__ conversion ;

/* Variables and functions */
 int /*<<< orphan*/  NULL_TREE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ ck_ptr ; 
 scalar_t__ ck_qual ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ,TYPE_2__*) ; 

__attribute__((used)) static void
FUNC4 (conversion **ics)
{
  if ((*ics)->this_p)
    {
      /* [over.match.funcs]

	 For non-static member functions, the type of the
	 implicit object parameter is "reference to cv X"
	 where X is the class of which the function is a
	 member and cv is the cv-qualification on the member
	 function declaration.  */
      conversion *t = *ics;
      tree reference_type;

      /* The `this' parameter is a pointer to a class type.  Make the
	 implicit conversion talk about a reference to that same class
	 type.  */
      reference_type = FUNC0 (t->type);
      reference_type = FUNC2 (reference_type);

      if (t->kind == ck_qual)
	t = t->u.next;
      if (t->kind == ck_ptr)
	t = t->u.next;
      t = FUNC1 (FUNC0 (t->type), NULL_TREE);
      t = FUNC3 (reference_type, t);
      *ics = t;
    }
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ name; scalar_t__ scope; scalar_t__ template_id; scalar_t__ enum_p; scalar_t__ class_p; } ;
typedef  TYPE_1__ typename_info ;
typedef  scalar_t__ tree ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 

__attribute__((used)) static int
FUNC6 (const void * k1, const void * k2)
{
  tree t1;
  const typename_info *t2;

  t1 = (tree) k1;
  t2 = (const typename_info *) k2;

  return (FUNC0 (FUNC5 (t1)) == t2->name
	  && FUNC4 (t1) == t2->scope
	  && FUNC3 (t1) == t2->template_id
	  && FUNC2 (t1) == t2->enum_p
	  && FUNC1 (t1) == t2->class_p);
}
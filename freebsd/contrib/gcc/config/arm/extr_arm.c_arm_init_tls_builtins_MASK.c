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
typedef  int /*<<< orphan*/ * tree ;
struct TYPE_2__ {int /*<<< orphan*/  (* builtin_function ) (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  ARM_BUILTIN_THREAD_POINTER ; 
 int /*<<< orphan*/  BUILT_IN_MD ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 TYPE_1__ lang_hooks ; 
 int /*<<< orphan*/  ptr_type_node ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  void_list_node ; 

__attribute__((used)) static void
FUNC4 (void)
{
  tree ftype;
  tree nothrow = FUNC3 (FUNC1 ("nothrow"), NULL, NULL);
  tree const_nothrow = FUNC3 (FUNC1 ("const"), NULL, nothrow);

  ftype = FUNC0 (ptr_type_node, void_list_node);
  lang_hooks.builtin_function ("__builtin_thread_pointer", ftype,
			       ARM_BUILTIN_THREAD_POINTER, BUILT_IN_MD,
			       NULL, const_nothrow);
}
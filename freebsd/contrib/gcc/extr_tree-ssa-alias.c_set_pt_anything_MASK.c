#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
struct ptr_info_def {int pt_anything; scalar_t__ name_mem_tag; int /*<<< orphan*/ * pt_vars; } ;

/* Variables and functions */
 scalar_t__ NULL_TREE ; 
 struct ptr_info_def* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

__attribute__((used)) static void
FUNC2 (tree ptr)
{
  struct ptr_info_def *pi = FUNC0 (ptr);

  pi->pt_anything = 1;
  pi->pt_vars = NULL;

  /* The pointer used to have a name tag, but we now found it pointing
     to an arbitrary location.  The name tag needs to be renamed and
     disassociated from PTR.  */
  if (pi->name_mem_tag)
    {
      FUNC1 (pi->name_mem_tag);
      pi->name_mem_tag = NULL_TREE;
    }
}
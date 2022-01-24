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
typedef  scalar_t__ tree ;
struct ptr_info_def {scalar_t__ name_mem_tag; } ;
struct data_reference {int dummy; } ;
struct TYPE_2__ {scalar_t__ symbol_mem_tag; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (struct data_reference*) ; 
 struct ptr_info_def* FUNC2 (struct data_reference*) ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ SSA_NAME ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static bool
FUNC8 (tree ptr, tree decl, 
		      struct data_reference *ptr_dr, 
		      bool *aliased)
{
  tree tag = NULL_TREE;
  struct ptr_info_def *pi = FUNC2 (ptr_dr);  

  FUNC5 (FUNC4 (ptr) == SSA_NAME && FUNC0 (decl));

  if (pi)
    tag = pi->name_mem_tag;
  if (!tag)
    tag = FUNC6 (FUNC3 (ptr))->symbol_mem_tag;
  if (!tag)
    tag = FUNC1 (ptr_dr);
  if (!tag)
    return false;
   
  *aliased = FUNC7 (tag, decl);      
  return true;
}
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
 scalar_t__ FUNC0 (struct data_reference*) ; 
 struct ptr_info_def* FUNC1 (struct data_reference*) ; 
 scalar_t__ NULL_TREE ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static bool
FUNC5 (tree ptr_a, tree ptr_b, 
		     struct data_reference *dra, 
		     struct data_reference *drb, 
		     bool *aliased)
{  
  tree tag_a = NULL_TREE, tag_b = NULL_TREE;
  struct ptr_info_def *pi_a = FUNC1 (dra);  
  struct ptr_info_def *pi_b = FUNC1 (drb);  

  if (pi_a && pi_a->name_mem_tag && pi_b && pi_b->name_mem_tag)
    {
      tag_a = pi_a->name_mem_tag;
      tag_b = pi_b->name_mem_tag;
    }
  else
    {
      tag_a = FUNC3 (FUNC2 (ptr_a))->symbol_mem_tag;
      if (!tag_a)
	tag_a = FUNC0 (dra);
      if (!tag_a)
	return false;
      
      tag_b = FUNC3 (FUNC2 (ptr_b))->symbol_mem_tag;
      if (!tag_b)
	tag_b = FUNC0 (drb);
      if (!tag_b)
	return false;
    }
  
  if (tag_a == tag_b)
    *aliased = true;
  else
    *aliased = FUNC4 (tag_a, tag_b);
  
  return true;
}
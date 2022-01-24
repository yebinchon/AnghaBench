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
typedef  scalar_t__ tree ;
struct ptr_info_def {scalar_t__ name_mem_tag; } ;

/* Variables and functions */
 scalar_t__ NULL_TREE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,int) ; 
 struct ptr_info_def* FUNC2 (scalar_t__) ; 

__attribute__((used)) static tree
FUNC3 (tree ptr)
{
  struct ptr_info_def *pi = FUNC2 (ptr);
  tree tag = pi->name_mem_tag;

  if (tag == NULL_TREE)
    tag = FUNC1 (FUNC0 (FUNC0 (ptr)), false);
  return tag;
}
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

/* Variables and functions */
 scalar_t__ NULL_TREE ; 
 scalar_t__ OVERLOAD ; 
 scalar_t__ TEMPLATE_DECL ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__) ; 

tree
FUNC2 (tree decl, tree chain)
{
  if (! chain && FUNC0 (decl) != TEMPLATE_DECL)
    return decl;
  if (chain && FUNC0 (chain) != OVERLOAD)
    chain = FUNC1 (chain, NULL_TREE);
  return FUNC1 (decl, chain);
}
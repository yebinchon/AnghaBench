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

/* Variables and functions */
 scalar_t__ INTEGER_TYPE ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC2 (tree type)
{
  /* Ada frontend uses subtypes -- an arithmetic cannot be directly performed
     in the subtype, but a base type must be used, and the result then can
     be casted to the subtype.  */
  if (FUNC0 (type) == INTEGER_TYPE && FUNC1 (type) != NULL_TREE)
    return true;

  return false;
}
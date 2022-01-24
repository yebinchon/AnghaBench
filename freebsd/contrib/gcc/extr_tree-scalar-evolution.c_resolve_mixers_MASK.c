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
struct loop {int dummy; } ;
typedef  int /*<<< orphan*/  htab_t ;

/* Variables and functions */
 int /*<<< orphan*/  FOLD_CONVERSIONS ; 
 int /*<<< orphan*/  del_scev_info ; 
 int /*<<< orphan*/  eq_scev_info ; 
 int /*<<< orphan*/  hash_scev_info ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct loop*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static tree
FUNC3 (struct loop *loop, tree chrec)
{
  htab_t cache = FUNC0 (10, hash_scev_info, eq_scev_info, del_scev_info);
  tree ret = FUNC2 (loop, chrec, FOLD_CONVERSIONS, cache, 0);
  FUNC1 (cache);
  return ret;
}
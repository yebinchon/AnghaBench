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
struct ls_expr {int /*<<< orphan*/  pattern; } ;
typedef  int /*<<< orphan*/  hashval_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static hashval_t
FUNC2 (const void *p)
{
  int do_not_record_p = 0;
  const struct ls_expr *x = p;
  return FUNC1 (x->pattern, FUNC0 (x->pattern), &do_not_record_p, NULL, false);
}
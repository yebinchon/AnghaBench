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
typedef  int /*<<< orphan*/  wi ;
typedef  int /*<<< orphan*/  tree ;
struct walk_stmt_info {int val_only; int want_locations; int /*<<< orphan*/ * info; int /*<<< orphan*/  callback; } ;
typedef  int /*<<< orphan*/  omp_context ;

/* Variables and functions */
 int /*<<< orphan*/  lower_omp_1 ; 
 int /*<<< orphan*/  FUNC0 (struct walk_stmt_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct walk_stmt_info*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2 (tree *stmt_p, omp_context *ctx)
{
  struct walk_stmt_info wi;

  FUNC0 (&wi, 0, sizeof (wi));
  wi.callback = lower_omp_1;
  wi.info = ctx;
  wi.val_only = true;
  wi.want_locations = true;

  FUNC1 (&wi, stmt_p);
}
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
struct ivopts_data {int /*<<< orphan*/  iv_candidates; int /*<<< orphan*/  iv_uses; int /*<<< orphan*/  niters; int /*<<< orphan*/  important_candidates; int /*<<< orphan*/  relevant; int /*<<< orphan*/  version_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  decl_rtl_to_reset ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ivopts_data*) ; 
 int /*<<< orphan*/  heap ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  iv_cand_p ; 
 int /*<<< orphan*/  iv_use_p ; 
 int /*<<< orphan*/  tree ; 

__attribute__((used)) static void
FUNC5 (struct ivopts_data *data)
{
  FUNC3 (data);
  FUNC2 (data->version_info);
  FUNC0 (data->relevant);
  FUNC0 (data->important_candidates);
  FUNC4 (data->niters);

  FUNC1 (tree, heap, decl_rtl_to_reset);
  FUNC1 (iv_use_p, heap, data->iv_uses);
  FUNC1 (iv_cand_p, heap, data->iv_candidates);
}
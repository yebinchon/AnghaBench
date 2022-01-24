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
struct ivopts_data {int /*<<< orphan*/  current_loop; } ;
struct iv_use {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IP_END ; 
 int /*<<< orphan*/  IP_NORMAL ; 
 int /*<<< orphan*/  NULL_TREE ; 
 int /*<<< orphan*/  FUNC0 (struct ivopts_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct iv_use*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4 (struct ivopts_data *data, 
	       tree base, tree step, bool important, struct iv_use *use)
{
  if (FUNC3 (data->current_loop))
    FUNC0 (data, base, step, important, IP_NORMAL, use, NULL_TREE);
  if (FUNC2 (data->current_loop)
      && FUNC1 (data->current_loop))
    FUNC0 (data, base, step, important, IP_END, use, NULL_TREE);
}
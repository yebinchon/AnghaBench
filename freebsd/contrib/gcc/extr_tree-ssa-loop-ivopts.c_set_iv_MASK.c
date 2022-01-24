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
typedef  int /*<<< orphan*/  tree ;
struct version_info {TYPE_1__* iv; } ;
struct ivopts_data {int /*<<< orphan*/  relevant; } ;
struct TYPE_2__ {int /*<<< orphan*/  ssa_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 struct version_info* FUNC4 (struct ivopts_data*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5 (struct ivopts_data *data, tree iv, tree base, tree step)
{
  struct version_info *info = FUNC4 (data, iv);

  FUNC3 (!info->iv);

  FUNC2 (data->relevant, FUNC0 (iv));
  info->iv = FUNC1 (base, step);
  info->iv->ssa_name = iv;
}
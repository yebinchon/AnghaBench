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
struct ivopts_data {int dummy; } ;
struct iv_use {int dummy; } ;
struct iv_cand {int dummy; } ;
typedef  int /*<<< orphan*/  bitmap ;

/* Variables and functions */
 unsigned int INFTY ; 
 int /*<<< orphan*/  NULL_TREE ; 
 unsigned int FUNC0 (struct ivopts_data*,struct iv_use*,struct iv_cand*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ivopts_data*,struct iv_use*,struct iv_cand*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC2 (struct ivopts_data *data,
			       struct iv_use *use, struct iv_cand *cand)
{
  bitmap depends_on;
  unsigned cost = FUNC0 (data, use, cand, true, &depends_on);

  FUNC1 (data, use, cand, cost, depends_on, NULL_TREE);

  return cost != INFTY;
}
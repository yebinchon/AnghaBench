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
struct iv_use {struct iv_cand* selected; } ;
struct iv_cand {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iv_cand*) ; 
 struct iv_use* FUNC1 (struct ivopts_data*,unsigned int) ; 
 unsigned int FUNC2 (struct ivopts_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct ivopts_data*,struct iv_use*,struct iv_cand*) ; 

__attribute__((used)) static void
FUNC4 (struct ivopts_data *data)
{
  unsigned i;
  struct iv_cand *cand;
  struct iv_use *use;

  for (i = 0; i < FUNC2 (data); i++)
    {
      use = FUNC1 (data, i);
      cand = use->selected;
      FUNC0 (cand);

      FUNC3 (data, use, cand);
    }
}
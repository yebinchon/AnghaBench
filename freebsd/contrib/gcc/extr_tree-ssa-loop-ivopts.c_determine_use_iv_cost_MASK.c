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
struct iv_use {int type; } ;
struct iv_cand {int dummy; } ;

/* Variables and functions */
#define  USE_ADDRESS 130 
#define  USE_COMPARE 129 
#define  USE_NONLINEAR_EXPR 128 
 int FUNC0 (struct ivopts_data*,struct iv_use*,struct iv_cand*) ; 
 int FUNC1 (struct ivopts_data*,struct iv_use*,struct iv_cand*) ; 
 int FUNC2 (struct ivopts_data*,struct iv_use*,struct iv_cand*) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static bool
FUNC4 (struct ivopts_data *data,
		       struct iv_use *use, struct iv_cand *cand)
{
  switch (use->type)
    {
    case USE_NONLINEAR_EXPR:
      return FUNC2 (data, use, cand);

    case USE_ADDRESS:
      return FUNC0 (data, use, cand);

    case USE_COMPARE:
      return FUNC1 (data, use, cand);

    default:
      FUNC3 ();
    }
}
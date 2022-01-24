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
struct iv_use {int type; int /*<<< orphan*/  iv; } ;

/* Variables and functions */
#define  USE_ADDRESS 130 
#define  USE_COMPARE 129 
#define  USE_NONLINEAR_EXPR 128 
 int /*<<< orphan*/  FUNC0 (struct ivopts_data*,int /*<<< orphan*/ ,struct iv_use*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct iv_use* FUNC2 (struct ivopts_data*,unsigned int) ; 
 unsigned int FUNC3 (struct ivopts_data*) ; 

__attribute__((used)) static void
FUNC4 (struct ivopts_data *data)
{
  unsigned i;

  for (i = 0; i < FUNC3 (data); i++)
    {
      struct iv_use *use = FUNC2 (data, i);

      if (!use)
	continue;

      switch (use->type)
	{
	case USE_NONLINEAR_EXPR:
	case USE_COMPARE:
	case USE_ADDRESS:
	  /* Just add the ivs based on the value of the iv used here.  */
	  FUNC0 (data, use->iv, use);
	  break;

	default:
	  FUNC1 ();
	}
    }
}
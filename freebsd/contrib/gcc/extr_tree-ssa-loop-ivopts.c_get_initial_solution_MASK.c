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
struct iv_ca {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iv_ca**) ; 
 struct iv_ca* FUNC1 (struct ivopts_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct ivopts_data*,unsigned int) ; 
 unsigned int FUNC3 (struct ivopts_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct ivopts_data*,struct iv_ca*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct iv_ca *
FUNC5 (struct ivopts_data *data)
{
  struct iv_ca *ivs = FUNC1 (data);
  unsigned i;

  for (i = 0; i < FUNC3 (data); i++)
    if (!FUNC4 (data, ivs, FUNC2 (data, i)))
      {
	FUNC0 (&ivs);
	return NULL;
      }

  return ivs;
}
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
struct ivopts_data {int dummy; } ;
struct iv_use {int /*<<< orphan*/  selected; } ;
struct iv_ca {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  cand; } ;

/* Variables and functions */
 int TDF_DETAILS ; 
 scalar_t__ dump_file ; 
 int dump_flags ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,char*,...) ; 
 struct iv_ca* FUNC1 (struct ivopts_data*) ; 
 TYPE_1__* FUNC2 (struct iv_ca*,struct iv_use*) ; 
 int FUNC3 (struct iv_ca*) ; 
 int /*<<< orphan*/  FUNC4 (struct ivopts_data*,scalar_t__,struct iv_ca*) ; 
 struct iv_use* FUNC5 (struct ivopts_data*,unsigned int) ; 
 unsigned int FUNC6 (struct ivopts_data*) ; 
 scalar_t__ FUNC7 (struct ivopts_data*,struct iv_ca*) ; 

__attribute__((used)) static struct iv_ca *
FUNC8 (struct ivopts_data *data)
{
  unsigned i;
  struct iv_ca *set;
  struct iv_use *use;

  /* Get the initial solution.  */
  set = FUNC1 (data);
  if (!set)
    {
      if (dump_file && (dump_flags & TDF_DETAILS))
	FUNC0 (dump_file, "Unable to substitute for ivs, failed.\n");
      return NULL;
    }

  if (dump_file && (dump_flags & TDF_DETAILS))
    {
      FUNC0 (dump_file, "Initial set of candidates:\n");
      FUNC4 (data, dump_file, set);
    }

  while (FUNC7 (data, set))
    {
      if (dump_file && (dump_flags & TDF_DETAILS))
	{
	  FUNC0 (dump_file, "Improved to:\n");
	  FUNC4 (data, dump_file, set);
	}
    }

  if (dump_file && (dump_flags & TDF_DETAILS))
    FUNC0 (dump_file, "Final cost %d\n\n", FUNC3 (set));

  for (i = 0; i < FUNC6 (data); i++)
    {
      use = FUNC5 (data, i);
      use->selected = FUNC2 (set, use)->cand;
    }

  return set;
}
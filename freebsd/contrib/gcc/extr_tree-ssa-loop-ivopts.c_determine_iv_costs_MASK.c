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
struct iv_cand {int cost; } ;

/* Variables and functions */
 int TDF_DETAILS ; 
 int /*<<< orphan*/  FUNC0 (struct ivopts_data*,struct iv_cand*) ; 
 scalar_t__ dump_file ; 
 int dump_flags ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,char*,...) ; 
 struct iv_cand* FUNC2 (struct ivopts_data*,unsigned int) ; 
 unsigned int FUNC3 (struct ivopts_data*) ; 

__attribute__((used)) static void
FUNC4 (struct ivopts_data *data)
{
  unsigned i;

  if (dump_file && (dump_flags & TDF_DETAILS))
    {
      FUNC1 (dump_file, "Candidate costs:\n");
      FUNC1 (dump_file, "  cand\tcost\n");
    }

  for (i = 0; i < FUNC3 (data); i++)
    {
      struct iv_cand *cand = FUNC2 (data, i);

      FUNC0 (data, cand);

      if (dump_file && (dump_flags & TDF_DETAILS))
	FUNC1 (dump_file, "  %d\t%d\n", i, cand->cost);
    }
  
if (dump_file && (dump_flags & TDF_DETAILS))
      FUNC1 (dump_file, "\n");
}
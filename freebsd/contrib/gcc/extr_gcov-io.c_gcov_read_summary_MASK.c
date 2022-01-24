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
struct gcov_summary {struct gcov_ctr_summary* ctrs; void* checksum; } ;
struct gcov_ctr_summary {void* sum_max; void* run_max; void* sum_all; void* runs; void* num; } ;

/* Variables and functions */
 unsigned int GCOV_COUNTERS_SUMMABLE ; 
 void* FUNC0 () ; 
 void* FUNC1 () ; 

void
FUNC2 (struct gcov_summary *summary)
{
  unsigned ix;
  struct gcov_ctr_summary *csum;
  
  summary->checksum = FUNC1 ();
  for (csum = summary->ctrs, ix = GCOV_COUNTERS_SUMMABLE; ix--; csum++)
    {
      csum->num = FUNC1 ();
      csum->runs = FUNC1 ();
      csum->sum_all = FUNC0 ();
      csum->run_max = FUNC0 ();
      csum->sum_max = FUNC0 ();
    }
}
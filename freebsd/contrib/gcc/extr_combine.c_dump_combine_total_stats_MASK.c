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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,int,int,int) ; 
 int total_attempts ; 
 int total_extras ; 
 int total_merges ; 
 int total_successes ; 

void
FUNC1 (FILE *file)
{
  FUNC0
    (file,
     "\n;; Combiner totals: %d attempts, %d substitutions (%d requiring new space),\n;; %d successes.\n",
     total_attempts, total_merges, total_extras, total_successes);
}
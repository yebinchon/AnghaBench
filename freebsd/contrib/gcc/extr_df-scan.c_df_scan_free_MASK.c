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
struct df {scalar_t__ blocks_to_analyze; scalar_t__ blocks_to_scan; } ;
struct dataflow {struct dataflow* problem_data; struct df* df; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct dataflow*) ; 
 int /*<<< orphan*/  FUNC2 (struct dataflow*) ; 

__attribute__((used)) static void 
FUNC3 (struct dataflow *dflow)
{
  struct df *df = dflow->df;
  
  if (dflow->problem_data)
    {
      FUNC1 (dflow);
      FUNC2 (dflow->problem_data);
    }

  if (df->blocks_to_scan)
    FUNC0 (df->blocks_to_scan);
  
  if (df->blocks_to_analyze)
    FUNC0 (df->blocks_to_analyze);

  FUNC2 (dflow);
}
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
struct block {int dummy; } ;
typedef  scalar_t__ LONGEST ;

/* Variables and functions */
 int FUNC0 (struct block*) ; 
 scalar_t__ FUNC1 (struct block*) ; 

__attribute__((used)) static int
FUNC2 (const void *arg1, const void *arg2)
{
  LONGEST addr_diff;
  struct block **b1 = (struct block **) arg1;
  struct block **b2 = (struct block **) arg2;

  addr_diff = (FUNC1 ((*b1))) - (FUNC1 ((*b2)));
  if (addr_diff == 0)
    return (FUNC0 ((*b2))) - (FUNC0 ((*b1)));
  return addr_diff;
}
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
struct edge_list {int dummy; } ;
typedef  scalar_t__ basic_block ;

/* Variables and functions */
 int EDGE_INDEX_NO_EDGE ; 
 scalar_t__ FUNC0 (struct edge_list*,int) ; 
 scalar_t__ FUNC1 (struct edge_list*,int) ; 
 int FUNC2 (struct edge_list*) ; 

int
FUNC3 (struct edge_list *edge_list, basic_block pred, basic_block succ)
{
  int x;

  for (x = 0; x < FUNC2 (edge_list); x++)
    if (FUNC0 (edge_list, x) == pred
	&& FUNC1 (edge_list, x) == succ)
      return x;

  return (EDGE_INDEX_NO_EDGE);
}
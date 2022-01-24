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
struct cgraph_node {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct cgraph_node*) ; 
 int /*<<< orphan*/  FUNC1 (struct cgraph_node*) ; 
 int /*<<< orphan*/  FUNC2 (struct cgraph_node*,int,int) ; 

__attribute__((used)) static void
FUNC3 (struct cgraph_node *mt)
{
  int i, count;

  FUNC1 (mt);
  count = FUNC0 (mt);
  for (i = 0; i < count; i++)
    FUNC2 (mt, i, false);
}
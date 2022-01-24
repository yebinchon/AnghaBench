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
typedef  int /*<<< orphan*/  tree ;
struct loop {TYPE_1__* single_exit; } ;
struct TYPE_2__ {scalar_t__ dest; } ;

/* Variables and functions */
 scalar_t__ PHI_NODE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC3 (struct loop *loop, tree stmt)
{
  
  if (FUNC1 (stmt) != PHI_NODE
      || FUNC0 (stmt) != 1
      || FUNC2 (stmt) != loop->single_exit->dest)
    return false;
  
  return true;
}
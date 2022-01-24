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
typedef  scalar_t__ tree ;
struct loop {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  src; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,int) ; 
 TYPE_1__* FUNC1 (scalar_t__,int) ; 
 int FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (struct loop*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC4 (struct loop *loop, tree phi, tree def)
{
  int i;
  for (i = 0; i < FUNC2 (phi); i++)
    if (FUNC3 (loop, FUNC1 (phi, i)->src))
      if (FUNC0 (phi, i) == def)
	return true;
  return false;
}
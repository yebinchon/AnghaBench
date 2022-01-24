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
struct TYPE_2__ {int relax_inst; int relax_size; } ;

/* Variables and functions */
 scalar_t__ FAIL ; 
 int FUNC0 (char*) ; 
 TYPE_1__ inst ; 
 int FUNC1 (char**,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static void
FUNC3 (char *str)
{
  int rd = 0;

  FUNC2 (str);

  if ((rd = FUNC1 (&str, 4)) == (int) FAIL
      || FUNC0 (str) == (int) FAIL)
    {
      return;
    }
  else
    {
      inst.relax_inst |= rd << 20;
      inst.relax_size = 4;
    }
}
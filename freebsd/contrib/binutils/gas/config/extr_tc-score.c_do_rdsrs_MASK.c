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
struct TYPE_2__ {int instruction; } ;

/* Variables and functions */
 scalar_t__ FAIL ; 
 int /*<<< orphan*/  REG_TYPE_SCORE ; 
 int /*<<< orphan*/  REG_TYPE_SCORE_SR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_1__ inst ; 
 int FUNC1 (char**,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (char**) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static void
FUNC4 (char *str)
{
  FUNC3 (str);

  /* mfsr */
  if ((inst.instruction & 0xff) == 0x50)
    {
      if (FUNC1 (&str, 20, REG_TYPE_SCORE) != (int) FAIL
          && FUNC2 (&str) != (int) FAIL
          && FUNC1 (&str, 10, REG_TYPE_SCORE_SR) != (int) FAIL)
	FUNC0 (str);
    }
  else
    {
      if (FUNC1 (&str, 15, REG_TYPE_SCORE) != (int) FAIL
          && FUNC2 (&str) != (int) FAIL)
	FUNC1 (&str, 10, REG_TYPE_SCORE_SR);
    }
}
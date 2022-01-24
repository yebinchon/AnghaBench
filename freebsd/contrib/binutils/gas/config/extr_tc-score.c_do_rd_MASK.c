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

/* Variables and functions */
 scalar_t__ FAIL ; 
 int /*<<< orphan*/  REG_TYPE_SCORE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (char**,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static void
FUNC3 (char *str)
{
  FUNC2 (str);

  if (FUNC1 (&str, 20, REG_TYPE_SCORE) != (int) FAIL)
    FUNC0 (str);
}
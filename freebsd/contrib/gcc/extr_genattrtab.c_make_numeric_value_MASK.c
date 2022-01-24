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
typedef  scalar_t__ rtx ;

/* Variables and functions */
 int /*<<< orphan*/  CONST_STRING ; 
 int /*<<< orphan*/  MAX_DIGITS ; 
 char* FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static rtx
FUNC3 (int n)
{
  static rtx int_values[20];
  rtx exp;
  char *p;

  FUNC2 (n >= 0);

  if (n < 20 && int_values[n])
    return int_values[n];

  p = FUNC0 (MAX_DIGITS, "%d", n);
  exp = FUNC1 (CONST_STRING, p);

  if (n < 20)
    int_values[n] = exp;

  return exp;
}
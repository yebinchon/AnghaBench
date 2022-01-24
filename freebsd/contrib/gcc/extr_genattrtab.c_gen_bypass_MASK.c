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
typedef  int /*<<< orphan*/  rtx ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const) ; 
 char* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int) ; 

__attribute__((used)) static void
FUNC3 (rtx def)
{
  const char *p, *base;

  for (p = base = FUNC1 (def, 1); *p; p++)
    if (*p == ',')
      {
	FUNC2 (base, p - base);
	do
	  p++;
	while (FUNC0 (*p));
	base = p;
      }
  FUNC2 (base, p - base);
}
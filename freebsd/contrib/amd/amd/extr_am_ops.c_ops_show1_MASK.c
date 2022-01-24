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
 scalar_t__ FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,size_t) ; 

__attribute__((used)) static void
FUNC2(char *buf, size_t l, int *linesizep, const char *name)
{
  FUNC1(buf, name, l);
  FUNC1(buf, ", ", l);
  *linesizep += FUNC0(name) + 2;
  if (*linesizep > 60) {
    FUNC1(buf, "\t\n", l);
    *linesizep = 0;
  }
}
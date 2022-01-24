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
struct tm {int tm_sec; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tm*,char,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct tm*,char) ; 

__attribute__((used)) static int
FUNC2(struct tm *t, char type, int val, int mk)
{
  if (val < 0)
    return 0;

  switch (type) {
    case '+':
      if (val) {
        if (!FUNC0(t, '+', (t->tm_sec + val) / 60, 0))
          return 0;
        val %= 60;
        t->tm_sec += val;
        if (t->tm_sec > 59)
          t->tm_sec -= 60;
      }
      break;

    case '-':
      if (val) {
        if (!FUNC0(t, '-', val / 60, 0))
          return 0;
        val %= 60;
        if (val > t->tm_sec) {
          if (!FUNC0(t, '-', 1, 0))
            return 0;
          val -= 60;
        }
        t->tm_sec -= val;
      }
      break;

    default:
      if (val > 59)
        return 0;
      t->tm_sec = val;
  }

  return !mk || FUNC1(t, type) != -1;
}
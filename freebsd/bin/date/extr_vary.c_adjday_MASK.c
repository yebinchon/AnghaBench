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
struct tm {int tm_mday; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tm*,char,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct tm*) ; 
 int FUNC2 (struct tm*,char) ; 

__attribute__((used)) static int
FUNC3(struct tm *t, char type, int val, int mk)
{
  int lmdays;

  switch (type) {
    case '+':
      while (val) {
        lmdays = FUNC1(t);
        if (val > lmdays - t->tm_mday) {
          val -= lmdays - t->tm_mday + 1;
          t->tm_mday = 1;
          if (!FUNC0(t, '+', 1, 0, 0))
            return 0;
        } else {
          t->tm_mday += val;
          val = 0;
        }
      }
      break;
    case '-':
      while (val)
        if (val >= t->tm_mday) {
          val -= t->tm_mday;
          t->tm_mday = 1;
          if (!FUNC0(t, '-', 1, 0, 0))
            return 0;
          t->tm_mday = FUNC1(t);
        } else {
          t->tm_mday -= val;
          val = 0;
        }
      break;
    default:
      if (val > 0 && val <= FUNC1(t))
        t->tm_mday = val;
      else
        return 0;
      break;
  }

  return !mk || FUNC2(t, type) != -1;
}
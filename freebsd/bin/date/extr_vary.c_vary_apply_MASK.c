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
struct vary {char* arg; struct vary* next; } ;
struct tm {int tm_isdst; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tm*,char,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct tm*,char,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct tm*,char,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct tm*,char,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct tm*,char,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct tm*,char,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct tm*,char,int,int) ; 
 int FUNC7 (char*) ; 
 int /*<<< orphan*/  digits ; 
 size_t FUNC8 (char*) ; 
 size_t FUNC9 (char*,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  trans_mon ; 
 int /*<<< orphan*/  trans_wday ; 

const struct vary *
FUNC11(const struct vary *v, struct tm *t)
{
  char type;
  char which;
  char *arg;
  size_t len;
  int val;

  for (; v; v = v->next) {
    type = *v->arg;
    arg = v->arg;
    if (type == '+' || type == '-')
      arg++;
    else
      type = '\0';
    len = FUNC8(arg);
    if (len < 2)
      return v;

    if (type == '\0')
      t->tm_isdst = -1;

    if (FUNC9(arg, digits) != len-1) {
      val = FUNC10(trans_wday, arg);
      if (val != -1) {
          if (!FUNC5(t, type, val, 1, 1))
            return v;
      } else {
        val = FUNC10(trans_mon, arg);
        if (val != -1) {
          if (!FUNC3(t, type, val, 1, 1))
            return v;
        } else
          return v;
      }
    } else {
      val = FUNC7(arg);
      which = arg[len-1];
      
      switch (which) {
        case 'S':
          if (!FUNC4(t, type, val, 1))
            return v;
          break;
        case 'M':
          if (!FUNC2(t, type, val, 1))
            return v;
          break;
        case 'H':
          if (!FUNC1(t, type, val, 1))
            return v;
          break;
        case 'd':
          t->tm_isdst = -1;
          if (!FUNC0(t, type, val, 1))
            return v;
          break;
        case 'w':
          t->tm_isdst = -1;
          if (!FUNC5(t, type, val, 0, 1))
            return v;
          break;
        case 'm':
          t->tm_isdst = -1;
          if (!FUNC3(t, type, val, 0, 1))
            return v;
          break;
        case 'y':
          t->tm_isdst = -1;
          if (!FUNC6(t, type, val, 1))
            return v;
          break;
        default:
          return v;
      }
    }
  }
  return 0;
}
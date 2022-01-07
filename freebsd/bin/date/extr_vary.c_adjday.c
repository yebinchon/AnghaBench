
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tm {int tm_mday; } ;


 int adjmon (struct tm*,char,int,int ,int ) ;
 int daysinmonth (struct tm*) ;
 int domktime (struct tm*,char) ;

__attribute__((used)) static int
adjday(struct tm *t, char type, int val, int mk)
{
  int lmdays;

  switch (type) {
    case '+':
      while (val) {
        lmdays = daysinmonth(t);
        if (val > lmdays - t->tm_mday) {
          val -= lmdays - t->tm_mday + 1;
          t->tm_mday = 1;
          if (!adjmon(t, '+', 1, 0, 0))
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
          if (!adjmon(t, '-', 1, 0, 0))
            return 0;
          t->tm_mday = daysinmonth(t);
        } else {
          t->tm_mday -= val;
          val = 0;
        }
      break;
    default:
      if (val > 0 && val <= daysinmonth(t))
        t->tm_mday = val;
      else
        return 0;
      break;
  }

  return !mk || domktime(t, type) != -1;
}

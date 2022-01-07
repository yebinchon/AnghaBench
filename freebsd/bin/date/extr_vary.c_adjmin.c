
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tm {int tm_min; } ;


 int adjhour (struct tm*,char,int,int ) ;
 int domktime (struct tm*,char) ;

__attribute__((used)) static int
adjmin(struct tm *t, char type, int val, int mk)
{
  if (val < 0)
    return 0;

  switch (type) {
    case '+':
      if (val) {
        if (!adjhour(t, '+', (t->tm_min + val) / 60, 0))
          return 0;
        val %= 60;
        t->tm_min += val;
        if (t->tm_min > 59)
          t->tm_min -= 60;
      }
      break;

    case '-':
      if (val) {
        if (!adjhour(t, '-', val / 60, 0))
          return 0;
        val %= 60;
        if (val > t->tm_min) {
          if (!adjhour(t, '-', 1, 0))
            return 0;
          val -= 60;
        }
        t->tm_min -= val;
      }
      break;

    default:
      if (val > 59)
        return 0;
      t->tm_min = val;
  }

  return !mk || domktime(t, type) != -1;
}

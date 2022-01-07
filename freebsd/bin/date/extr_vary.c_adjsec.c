
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tm {int tm_sec; } ;


 int adjmin (struct tm*,char,int,int ) ;
 int domktime (struct tm*,char) ;

__attribute__((used)) static int
adjsec(struct tm *t, char type, int val, int mk)
{
  if (val < 0)
    return 0;

  switch (type) {
    case '+':
      if (val) {
        if (!adjmin(t, '+', (t->tm_sec + val) / 60, 0))
          return 0;
        val %= 60;
        t->tm_sec += val;
        if (t->tm_sec > 59)
          t->tm_sec -= 60;
      }
      break;

    case '-':
      if (val) {
        if (!adjmin(t, '-', val / 60, 0))
          return 0;
        val %= 60;
        if (val > t->tm_sec) {
          if (!adjmin(t, '-', 1, 0))
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

  return !mk || domktime(t, type) != -1;
}

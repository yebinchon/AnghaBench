
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tm {int tm_hour; } ;


 int adjday (struct tm*,char,int,int ) ;
 int domktime (struct tm*,char) ;

__attribute__((used)) static int
adjhour(struct tm *t, char type, int val, int mk)
{
  if (val < 0)
    return 0;

  switch (type) {
    case '+':
      if (val) {
        int days;

        days = (t->tm_hour + val) / 24;
        val %= 24;
        t->tm_hour += val;
        t->tm_hour %= 24;
        if (!adjday(t, '+', days, 0))
          return 0;
      }
      break;

    case '-':
      if (val) {
        int days;

        days = val / 24;
        val %= 24;
        if (val > t->tm_hour) {
          days++;
          val -= 24;
        }
        t->tm_hour -= val;
        if (!adjday(t, '-', days, 0))
          return 0;
      }
      break;

    default:
      if (val > 23)
        return 0;
      t->tm_hour = val;
  }

  return !mk || domktime(t, type) != -1;
}

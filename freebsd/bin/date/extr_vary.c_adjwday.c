
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tm {int tm_wday; } ;


 int adjday (struct tm*,char,int,int) ;

__attribute__((used)) static int
adjwday(struct tm *t, char type, int val, int istext, int mk)
{
  if (val < 0)
    return 0;

  switch (type) {
    case '+':
      if (istext)
        if (val < t->tm_wday)
          val = 7 - t->tm_wday + val;
        else
          val -= t->tm_wday;
      else
        val *= 7;
      return !val || adjday(t, '+', val, mk);
    case '-':
      if (istext) {
        if (val > t->tm_wday)
          val = 7 - val + t->tm_wday;
        else
          val = t->tm_wday - val;
      } else
        val *= 7;
      return !val || adjday(t, '-', val, mk);
    default:
      if (val < t->tm_wday)
        return adjday(t, '-', t->tm_wday - val, mk);
      else if (val > 6)
        return 0;
      else if (val > t->tm_wday)
        return adjday(t, '+', val - t->tm_wday, mk);
  }
  return 1;
}

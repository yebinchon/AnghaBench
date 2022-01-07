
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tm {int tm_year; } ;


 int domktime (struct tm*,char) ;

__attribute__((used)) static int
adjyear(struct tm *t, char type, int val, int mk)
{
  switch (type) {
    case '+':
      t->tm_year += val;
      break;
    case '-':
      t->tm_year -= val;
      break;
    default:
      t->tm_year = val;
      if (t->tm_year < 69)
       t->tm_year += 100;
      else if (t->tm_year > 1900)
        t->tm_year -= 1900;
      break;
  }
  return !mk || domktime(t, type) != -1;
}

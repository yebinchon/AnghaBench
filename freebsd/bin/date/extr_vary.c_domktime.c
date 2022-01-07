
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {int tm_year; } ;


 int adjhour (struct tm*,char,int,int ) ;
 int mktime (struct tm*) ;

__attribute__((used)) static int
domktime(struct tm *t, char type)
{
  time_t ret;

  while ((ret = mktime(t)) == -1 && t->tm_year > 68 && t->tm_year < 138)

    adjhour(t, type == '-' ? type : '+', 1, 0);

  return ret;
}

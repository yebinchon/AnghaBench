
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {int tm_sec; int tm_year; int tm_mon; int tm_mday; int tm_hour; int tm_min; } ;


 int ATOI2 (char*) ;
 struct tm* localtime (int*) ;
 int mktime (struct tm*) ;
 char* strchr (char*,char) ;
 int strlen (char*) ;

__attribute__((used)) static int
str_sec(char *str, time_t *tval)
{
 struct tm *lt;
 char *dot = ((void*)0);

 lt = localtime(tval);
 if ((dot = strchr(str, '.')) != ((void*)0)) {



  *dot++ = '\0';
  if (strlen(dot) != 2)
   return(-1);
  if ((lt->tm_sec = ATOI2(dot)) > 61)
   return(-1);
 } else
  lt->tm_sec = 0;

 switch (strlen(str)) {
 case 10:




  if ((lt->tm_year = ATOI2(str)) < 69)
   lt->tm_year += 100;
  str += 2;

 case 8:




  if ((lt->tm_mon = ATOI2(str)) > 12)
   return(-1);
  --lt->tm_mon;
  str += 2;

 case 6:



  if ((lt->tm_mday = ATOI2(str)) > 31)
   return(-1);
  str += 2;

 case 4:



  if ((lt->tm_hour = ATOI2(str)) > 23)
   return(-1);
  str += 2;

 case 2:



  if ((lt->tm_min = ATOI2(str)) > 59)
   return(-1);
  break;
 default:
  return(-1);
 }



 if ((*tval = mktime(lt)) == -1)
  return(-1);
 return(0);
}

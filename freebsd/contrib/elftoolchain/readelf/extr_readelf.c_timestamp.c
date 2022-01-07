
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ts ;
typedef int time_t ;
struct tm {int tm_year; int tm_mon; int tm_mday; int tm_hour; int tm_min; int tm_sec; } ;


 struct tm* gmtime (int *) ;
 int snprintf (char*,int,char*,int,int,int,int,int,int) ;

__attribute__((used)) static char *
timestamp(time_t ti)
{
 static char ts[32];
 struct tm *t;

 t = gmtime(&ti);
 snprintf(ts, sizeof(ts), "%04d-%02d-%02dT%02d:%02d:%02d",
     t->tm_year + 1900, t->tm_mon + 1, t->tm_mday, t->tm_hour,
     t->tm_min, t->tm_sec);

 return (ts);
}

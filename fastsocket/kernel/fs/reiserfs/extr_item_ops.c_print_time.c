
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;


 int sprintf (char*,char*,int ) ;

__attribute__((used)) static char *print_time(time_t t)
{
 static char timebuf[256];

 sprintf(timebuf, "%ld", t);
 return timebuf;
}

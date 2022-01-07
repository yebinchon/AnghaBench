
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {int dummy; } ;


 struct tm* localtime (int *) ;
 int strftime (char*,int,char*,struct tm*) ;

char *
Targ_FmtTime(time_t tm)
{
    struct tm *parts;
    static char buf[128];

    parts = localtime(&tm);
    (void)strftime(buf, sizeof buf, "%k:%M:%S %b %d, %Y", parts);
    return(buf);
}

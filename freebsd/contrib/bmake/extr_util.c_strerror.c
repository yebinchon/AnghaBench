
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int snprintf (char*,int,char*,int) ;
 char** sys_errlist ;
 int sys_nerr ;

char *
strerror(int e)
{
    static char buf[100];
    if (e < 0 || e >= sys_nerr) {
 snprintf(buf, sizeof(buf), "Unknown error %d", e);
 return buf;
    }
    else
 return sys_errlist[e];
}

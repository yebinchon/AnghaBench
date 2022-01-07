
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
typedef int buf ;


 int BUFSIZ ;
 char* bmake_strdup (char*) ;
 int gmtime (int *) ;
 int localtime (int *) ;
 int strftime (char*,int,char const*,int ) ;
 int time (int *) ;

__attribute__((used)) static char *
VarStrftime(const char *fmt, int zulu, time_t utc)
{
    char buf[BUFSIZ];

    if (!utc)
 time(&utc);
    if (!*fmt)
 fmt = "%c";
    strftime(buf, sizeof(buf), fmt, zulu ? gmtime(&utc) : localtime(&utc));

    buf[sizeof(buf) - 1] = '\0';
    return bmake_strdup(buf);
}

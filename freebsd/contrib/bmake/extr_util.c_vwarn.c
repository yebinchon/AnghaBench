
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int errno ;
 int fprintf (int ,char*,char*) ;
 int stderr ;
 char* strerror (int ) ;
 int vwarnx (char const*,int ) ;

__attribute__((used)) static void
vwarn(const char *fmt, va_list args)
{
 vwarnx(fmt, args);
 fprintf(stderr, "%s\n", strerror(errno));
}

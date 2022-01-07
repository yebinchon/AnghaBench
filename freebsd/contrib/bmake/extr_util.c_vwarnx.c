
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int fprintf (int ,char*,...) ;
 char* progname ;
 int stderr ;
 int vfprintf (int ,char const*,int ) ;

__attribute__((used)) static void
vwarnx(const char *fmt, va_list args)
{
 fprintf(stderr, "%s: ", progname);
 if ((fmt)) {
  vfprintf(stderr, fmt, args);
  fprintf(stderr, ": ");
 }
}

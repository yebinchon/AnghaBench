
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 scalar_t__ errno ;
 int fprintf (int ,char*) ;
 int perror (char*) ;
 int stderr ;
 int vfprintf (int ,char const*,int ) ;

void __vwarning(const char *fmt, va_list ap)
{
 if (errno)
  perror("trace-cmd");
 errno = 0;

 fprintf(stderr, "  ");
 vfprintf(stderr, fmt, ap);

 fprintf(stderr, "\n");
}

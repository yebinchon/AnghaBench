
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int errno ;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int perror (char*) ;
 int stderr ;
 int vfprintf (int ,char const*,int ) ;

void __vdie(const char *fmt, va_list ap)
{
 int ret = errno;

 if (errno)
  perror("trace-cmd");
 else
  ret = -1;

 fprintf(stderr, "  ");
 vfprintf(stderr, fmt, ap);

 fprintf(stderr, "\n");
 exit(ret);
}

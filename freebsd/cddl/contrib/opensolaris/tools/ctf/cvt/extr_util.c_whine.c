
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int errno ;
 int fprintf (int ,char*,char const*,...) ;
 char* progname ;
 int stderr ;
 char* strerror (int) ;
 int strlen (char const*) ;
 int vfprintf (int ,char const*,int ) ;

__attribute__((used)) static void
whine(const char *type, const char *format, va_list ap)
{
 int error = errno;

 fprintf(stderr, "%s: %s: ", type, progname);
 vfprintf(stderr, format, ap);

 if (format[strlen(format) - 1] != '\n')
  fprintf(stderr, ": %s\n", strerror(error));
}

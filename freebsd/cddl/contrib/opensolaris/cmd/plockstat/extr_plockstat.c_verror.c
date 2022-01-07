
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int errno ;
 int fprintf (int ,char*,char*) ;
 char* g_pname ;
 int stderr ;
 char* strerror (int) ;
 int strlen (char const*) ;
 int vfprintf (int ,char const*,int ) ;

__attribute__((used)) static void
verror(const char *fmt, va_list ap)
{
 int error = errno;

 (void) fprintf(stderr, "%s: ", g_pname);
 (void) vfprintf(stderr, fmt, ap);

 if (fmt[strlen(fmt) - 1] != '\n')
  (void) fprintf(stderr, ": %s\n", strerror(error));
}

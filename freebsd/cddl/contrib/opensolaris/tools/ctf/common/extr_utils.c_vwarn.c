
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int errno ;
 int fprintf (int ,char*,char*) ;
 char* pname ;
 int stderr ;
 int * strchr (char const*,char) ;
 char* strerror (int) ;
 int vfprintf (int ,char const*,int ) ;

void
vwarn(const char *format, va_list alist)
{
 int err = errno;

 if (pname != ((void*)0))
  (void) fprintf(stderr, "%s: ", pname);

 (void) vfprintf(stderr, format, alist);

 if (strchr(format, '\n') == ((void*)0))
  (void) fprintf(stderr, ": %s\n", strerror(err));
}

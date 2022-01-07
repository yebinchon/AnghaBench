
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 char* ERRNO_FMT ;
 char* PNAME_FMT ;
 int fprintf (int ,char*,int *) ;
 int * pname ;
 int stderr ;
 int * strerror (int) ;
 int * strrchr (char const*,char) ;
 int vfprintf (int ,char const*,int ) ;

__attribute__((used)) static void
uu_warn_internal(int err, const char *format, va_list alist)
{
 if (pname != ((void*)0))
  (void) fprintf(stderr, PNAME_FMT, pname);

 (void) vfprintf(stderr, format, alist);

 if (strrchr(format, '\n') == ((void*)0))
  (void) fprintf(stderr, ERRNO_FMT, strerror(err));
}

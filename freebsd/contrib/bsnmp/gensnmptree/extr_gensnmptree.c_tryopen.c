
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int * fopen (char*,char*) ;
 int free (char*) ;
 char* savestr (char const*) ;
 int sprintf (char*,char*,char const*,char const*) ;
 scalar_t__ strlen (char const*) ;
 char* xalloc (scalar_t__) ;

__attribute__((used)) static FILE *
tryopen(const char *path, const char *fname)
{
 char *fn;
 FILE *fp;

 if (path == ((void*)0))
  fn = savestr(fname);
 else {
  fn = xalloc(strlen(path) + strlen(fname) + 2);
  sprintf(fn, "%s/%s", path, fname);
 }
 fp = fopen(fn, "r");
 free(fn);
 return (fp);
}

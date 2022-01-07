
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int _ (char*) ;
 int fatal (int ,char const*,char*) ;
 int * fopen (char*,char*) ;
 int free (char*) ;
 char* mcset_mc_basename ;
 int sprintf (char*,char*,char const*,char*,char const*) ;
 size_t strlen (char const*) ;
 char* xmalloc (size_t) ;

__attribute__((used)) static FILE *
mc_create_path_text_file (const char *path, const char *ext)
{
  FILE *ret;
  size_t len = 1;
  char *hsz;

  len += (path != ((void*)0) ? strlen (path) : 0);
  len += strlen (mcset_mc_basename);
  len += (ext != ((void*)0) ? strlen (ext) : 0);
  hsz = xmalloc (len);
  sprintf (hsz, "%s%s%s", (path != ((void*)0) ? path : ""), mcset_mc_basename,
    (ext != ((void*)0) ? ext : ""));
  if ((ret = fopen (hsz, "wb")) == ((void*)0))
    fatal (_("can't create %s file ,%s' for output.\n"), (ext ? ext : "text"), hsz);
  free (hsz);
  return ret;
}

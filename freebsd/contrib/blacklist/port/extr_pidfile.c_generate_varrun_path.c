
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _PATH_VARRUN ;
 int asprintf (char**,char*,int ,char const*) ;
 char* getprogname () ;

__attribute__((used)) static char *
generate_varrun_path(const char *bname)
{
 char *path;

 if (bname == ((void*)0))
  bname = getprogname();


 if (asprintf(&path, "%s%s.pid", _PATH_VARRUN, bname) == -1)
  return ((void*)0);
 return path;
}

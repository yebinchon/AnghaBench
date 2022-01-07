
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int path ;


 int MAX_PATHS ;
 int memmove (int *,int *,int) ;
 int npaths ;
 int * paths ;
 int report (char*) ;
 int savestr (char const*) ;
 int stdpaths ;

__attribute__((used)) static void
path_new(const char *path)
{
 if (npaths >= MAX_PATHS)
  report("too many -I directives");
 memmove(&paths[npaths - stdpaths + 1], &paths[npaths - stdpaths],
     sizeof(path[0]) * stdpaths);
 paths[npaths - stdpaths] = savestr(path);
 npaths++;
}

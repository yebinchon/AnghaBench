
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _func_map {int (* func ) (char const*) ;scalar_t__ name; } ;


 scalar_t__ FSTREQ (scalar_t__,char const*) ;
 int fprintf (int ,char*,char const*) ;
 struct _func_map* glob_functable ;
 int stderr ;
 int stub1 (char const*) ;

__attribute__((used)) static int
process_global_option(const char *key, const char *val)
{
  struct _func_map *gfp;


  if (!val || val[0] == '\0')
    return 1;




  for (gfp = glob_functable; gfp->name; gfp++)
    if (FSTREQ(gfp->name, key))
      return (gfp->func)(val);

  fprintf(stderr, "conf: unknown global key: \"%s\"\n", key);
  return 1;
}

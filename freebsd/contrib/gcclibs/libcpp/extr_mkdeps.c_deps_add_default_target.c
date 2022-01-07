
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct deps {scalar_t__ ntargets; } ;


 char const* TARGET_OBJECT_SUFFIX ;
 scalar_t__ alloca (int) ;
 int deps_add_target (struct deps*,char*,int) ;
 char* lbasename (char const*) ;
 int strcpy (char*,char const*) ;
 int strlen (char const*) ;
 char* strrchr (char*,char) ;

void
deps_add_default_target (struct deps *d, const char *tgt)
{

  if (d->ntargets)
    return;

  if (tgt[0] == '\0')
    deps_add_target (d, "-", 1);
  else
    {



      const char *start = lbasename (tgt);
      char *o = (char *) alloca (strlen (start)
                                 + strlen (".o") + 1);
      char *suffix;

      strcpy (o, start);

      suffix = strrchr (o, '.');
      if (!suffix)
        suffix = o + strlen (o);
      strcpy (suffix, ".o");

      deps_add_target (d, o, 1);
    }
}

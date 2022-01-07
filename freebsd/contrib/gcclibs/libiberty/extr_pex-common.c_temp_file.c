
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pex_obj {int * tempbase; } ;


 int PEX_SUFFIX ;
 int close (int) ;
 char* concat (int *,char*,int *) ;
 int free (char*) ;
 char* make_temp_file (char*) ;
 int mkstemps (char*,int ) ;
 scalar_t__ strcmp (int *,char*) ;
 int strlen (int *) ;
 char* xstrdup (int *) ;

__attribute__((used)) static char *
temp_file (struct pex_obj *obj, int flags, char *name)
{
  if (name == ((void*)0))
    {
      if (obj->tempbase == ((void*)0))
        {
          name = make_temp_file (((void*)0));
        }
      else
        {
          int len = strlen (obj->tempbase);
          int out;

          if (len >= 6
              && strcmp (obj->tempbase + len - 6, "XXXXXX") == 0)
            name = xstrdup (obj->tempbase);
          else
            name = concat (obj->tempbase, "XXXXXX", ((void*)0));

          out = mkstemps (name, 0);
          if (out < 0)
            {
              free (name);
              return ((void*)0);
            }





          close (out);
        }
    }
  else if ((flags & PEX_SUFFIX) != 0)
    {
      if (obj->tempbase == ((void*)0))
        name = make_temp_file (name);
      else
        name = concat (obj->tempbase, name, ((void*)0));
    }

  return name;
}

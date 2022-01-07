
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char type; char* name; int value; int stab_desc; int stab_type; } ;
typedef TYPE_1__ symbol_info ;
typedef int bfd_boolean ;
typedef int bfd ;
typedef int asymbol ;


 int FALSE ;
 int TRUE ;
 int bfd_asymbol_name (int *) ;
 int bfd_get_symbol_info (int *,int *,TYPE_1__*) ;
 char* concat (char*,int ,char const*) ;
 int finish_stab (void*,void*) ;
 int free (char*) ;
 int free_saved_stabs () ;
 int parse_stab (void*,void*,int ,int ,int ,char const*) ;
 int save_stab (int ,int ,int ,char const*) ;
 int stab_context () ;
 void* start_stab (void*,int *,int ,int **,long) ;
 int strlen (char const*) ;
 char* xstrdup (char const*) ;

__attribute__((used)) static bfd_boolean
read_symbol_stabs_debugging_info (bfd *abfd, asymbol **syms, long symcount,
      void *dhandle, bfd_boolean *pfound)
{
  void *shandle;
  asymbol **ps, **symend;

  shandle = ((void*)0);
  symend = syms + symcount;
  for (ps = syms; ps < symend; ps++)
    {
      symbol_info i;

      bfd_get_symbol_info (abfd, *ps, &i);

      if (i.type == '-')
 {
   const char *s;
   char *f;

   if (shandle == ((void*)0))
     {
       shandle = start_stab (dhandle, abfd, FALSE, syms, symcount);
       if (shandle == ((void*)0))
  return FALSE;
     }

   *pfound = TRUE;

   s = i.name;
   f = ((void*)0);
   while (s[strlen (s) - 1] == '\\'
   && ps + 1 < symend)
     {
       char *sc, *n;

       ++ps;
       sc = xstrdup (s);
       sc[strlen (sc) - 1] = '\0';
       n = concat (sc, bfd_asymbol_name (*ps), (const char *) ((void*)0));
       free (sc);
       if (f != ((void*)0))
  free (f);
       f = n;
       s = n;
     }

   save_stab (i.stab_type, i.stab_desc, i.value, s);

   if (! parse_stab (dhandle, shandle, i.stab_type, i.stab_desc,
       i.value, s))
     {
       stab_context ();
       free_saved_stabs ();
       return FALSE;
     }




 }
    }

  free_saved_stabs ();

  if (shandle != ((void*)0))
    {
      if (! finish_stab (dhandle, shandle))
 return FALSE;
    }

  return TRUE;
}

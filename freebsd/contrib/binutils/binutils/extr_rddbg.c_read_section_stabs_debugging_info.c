
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd_vma ;
typedef int bfd_size_type ;
typedef char bfd_byte ;
typedef int bfd_boolean ;
typedef int bfd ;
typedef int asymbol ;
typedef int asection ;


 int FALSE ;
 int TRUE ;
 char* bfd_errmsg (int ) ;
 int bfd_get_16 (int *,char*) ;
 int bfd_get_32 (int *,char*) ;
 int bfd_get_8 (int *,char*) ;
 int bfd_get_error () ;
 char* bfd_get_filename (int *) ;
 int * bfd_get_section_by_name (int *,char const*) ;
 int bfd_get_section_contents (int *,int *,char*,int ,int) ;
 int bfd_section_size (int *,int *) ;
 char* concat (char*,char*,char const*) ;
 int finish_stab (void*,void*) ;
 int fprintf (int ,char*,char*,char const*,...) ;
 int free (char*) ;
 int free_saved_stabs () ;
 int parse_stab (void*,void*,int,int,int,char*) ;
 int save_stab (int,int,int,char*) ;
 int stab_context () ;
 void* start_stab (void*,int *,int ,int **,long) ;
 int stderr ;
 int strlen (char*) ;
 scalar_t__ xmalloc (int) ;

__attribute__((used)) static bfd_boolean
read_section_stabs_debugging_info (bfd *abfd, asymbol **syms, long symcount,
       void *dhandle, bfd_boolean *pfound)
{
  static struct
    {
      const char *secname;
      const char *strsecname;
    }
  names[] =
    {
      { ".stab", ".stabstr" },
      { "LC_SYMTAB.stabs", "LC_SYMTAB.stabstr" },
      { "$GDB_SYMBOLS$", "$GDB_STRINGS$" }
    };
  unsigned int i;
  void *shandle;

  *pfound = FALSE;
  shandle = ((void*)0);

  for (i = 0; i < sizeof names / sizeof names[0]; i++)
    {
      asection *sec, *strsec;

      sec = bfd_get_section_by_name (abfd, names[i].secname);
      strsec = bfd_get_section_by_name (abfd, names[i].strsecname);
      if (sec != ((void*)0) && strsec != ((void*)0))
 {
   bfd_size_type stabsize, strsize;
   bfd_byte *stabs, *strings;
   bfd_byte *stab;
   bfd_size_type stroff, next_stroff;

   stabsize = bfd_section_size (abfd, sec);
   stabs = (bfd_byte *) xmalloc (stabsize);
   if (! bfd_get_section_contents (abfd, sec, stabs, 0, stabsize))
     {
       fprintf (stderr, "%s: %s: %s\n",
         bfd_get_filename (abfd), names[i].secname,
         bfd_errmsg (bfd_get_error ()));
       return FALSE;
     }

   strsize = bfd_section_size (abfd, strsec);
   strings = (bfd_byte *) xmalloc (strsize);
   if (! bfd_get_section_contents (abfd, strsec, strings, 0, strsize))
     {
       fprintf (stderr, "%s: %s: %s\n",
         bfd_get_filename (abfd), names[i].strsecname,
         bfd_errmsg (bfd_get_error ()));
       return FALSE;
     }

   if (shandle == ((void*)0))
     {
       shandle = start_stab (dhandle, abfd, TRUE, syms, symcount);
       if (shandle == ((void*)0))
  return FALSE;
     }

   *pfound = TRUE;

   stroff = 0;
   next_stroff = 0;
   for (stab = stabs; stab < stabs + stabsize; stab += 12)
     {
       unsigned int strx;
       int type;
       int other;
       int desc;
       bfd_vma value;



       strx = bfd_get_32 (abfd, stab);
       type = bfd_get_8 (abfd, stab + 4);
       other = bfd_get_8 (abfd, stab + 5);
       desc = bfd_get_16 (abfd, stab + 6);
       value = bfd_get_32 (abfd, stab + 8);

       if (type == 0)
  {


    stroff = next_stroff;
    next_stroff += value;
  }
       else
  {
    char *f, *s;

    f = ((void*)0);

    if (stroff + strx > strsize)
      {
        fprintf (stderr, "%s: %s: stab entry %ld is corrupt, strx = 0x%x, type = %d\n",
          bfd_get_filename (abfd), names[i].secname,
          (long) (stab - stabs) / 12, strx, type);
        continue;
      }

    s = (char *) strings + stroff + strx;

    while (s[strlen (s) - 1] == '\\'
    && stab + 12 < stabs + stabsize)
      {
        char *p;

        stab += 12;
        p = s + strlen (s) - 1;
        *p = '\0';
        s = concat (s,
      ((char *) strings
       + stroff
       + bfd_get_32 (abfd, stab)),
      (const char *) ((void*)0));




        *p = '\\';

        if (f != ((void*)0))
   free (f);
        f = s;
      }

    save_stab (type, desc, value, s);

    if (! parse_stab (dhandle, shandle, type, desc, value, s))
      {
        stab_context ();
        free_saved_stabs ();
        return FALSE;
      }




  }
     }

   free_saved_stabs ();
   free (stabs);




 }
    }

  if (shandle != ((void*)0))
    {
      if (! finish_stab (dhandle, shandle))
 return FALSE;
    }

  return TRUE;
}

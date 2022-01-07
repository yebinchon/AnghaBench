
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {char* key; int tweaking; TYPE_4__* file; scalar_t__ tweaked; } ;
typedef TYPE_1__ symbol ;
struct TYPE_7__ {char* mangled; } ;
typedef TYPE_2__ demangled ;
struct TYPE_8__ {char* key; } ;
typedef int FILE ;


 scalar_t__ ISSPACE (unsigned char) ;
 int USER_LABEL_PREFIX ;
 char* _ (char*) ;
 TYPE_2__* demangled_hash_lookup (char*,int) ;
 int error (char*,char*,char*) ;
 int fclose (int *) ;
 int file_push (TYPE_4__*) ;
 int * file_stack ;
 int * fopen (char const*,char*) ;
 int fprintf (int ,char*,char*,char*) ;
 int obstack_free (int *,int ) ;
 int stderr ;
 char* strchr (char const*,char) ;
 scalar_t__ strcmp (char const*,char*) ;
 int strlen (int ) ;
 int strncmp (char*,int ,int ) ;
 char* strrchr (char*,char) ;
 scalar_t__ strstr (char const*,char*) ;
 TYPE_1__* symbol_hash_lookup (char*,int) ;
 int temporary_firstobj ;
 int temporary_obstack ;
 char* tfgets (int *) ;
 int tlink_verbose ;

__attribute__((used)) static int
scan_linker_output (const char *fname)
{
  FILE *stream = fopen (fname, "r");
  char *line;
  int skip_next_in_line = 0;

  while ((line = tfgets (stream)) != ((void*)0))
    {
      char *p = line, *q;
      symbol *sym;
      int end;
      int ok = 0;


      if (skip_next_in_line
   && strstr (p, " in "))
   continue;
      skip_next_in_line = 0;

      while (*p && ISSPACE ((unsigned char) *p))
 ++p;

      if (! *p)
 continue;

      for (q = p; *q && ! ISSPACE ((unsigned char) *q); ++q)
 ;


      if (*p == '.')
 ++p;
      if (!strncmp (p, USER_LABEL_PREFIX, strlen (USER_LABEL_PREFIX)))
 p += strlen (USER_LABEL_PREFIX);

      end = ! *q;
      *q = 0;
      sym = symbol_hash_lookup (p, 0);




      if (! sym && ! end && strstr (q + 1, "Undefined symbol: "))
 {
   char *p = strrchr (q + 1, ' ');
   p++;
   if (*p == '.')
     p++;
   if (!strncmp (p, USER_LABEL_PREFIX, strlen (USER_LABEL_PREFIX)))
     p += strlen (USER_LABEL_PREFIX);
   sym = symbol_hash_lookup (p, 0);
 }

      if (! sym && ! end)

 {
   const char *oldq = q + 1;
   demangled *dem = 0;
   q = 0;


   if (strcmp (oldq, "referenced from:") == 0)
     {

       ok = 1;



       oldq = p;



       skip_next_in_line = 1;
     }


   p = strchr (oldq, '`');
   if (p)
     p++, q = strchr (p, '\'');

   else if (p = strchr (oldq, '"'), p)
     p++, q = strchr (p, '"');
   else {

     q = strchr (oldq, 0);
     if (q != oldq)
       p = (char *)oldq;
   }

   if (p)
     {


       p[-1] = '\0';


       if (*p == '.')
  p++;
     }



   if (q && (ok
      || strstr (oldq, "ndefined")
      || strstr (oldq, "nresolved")
      || strstr (oldq, "nsatisfied")
      || strstr (oldq, "ultiple")))
     {
       *q = 0;
       dem = demangled_hash_lookup (p, 0);
       if (dem)
  sym = symbol_hash_lookup (dem->mangled, 0);
       else
  {
    if (!strncmp (p, USER_LABEL_PREFIX,
    strlen (USER_LABEL_PREFIX)))
      p += strlen (USER_LABEL_PREFIX);
    sym = symbol_hash_lookup (p, 0);
  }
     }
 }

      if (sym && sym->tweaked)
 {
   error ("'%s' was assigned to '%s', but was not defined "
   "during recompilation, or vice versa",
   sym->key, sym->file->key);
   fclose (stream);
   return 0;
 }
      if (sym && !sym->tweaking)
 {
   if (tlink_verbose >= 2)
     fprintf (stderr, _("collect: tweaking %s in %s\n"),
       sym->key, sym->file->key);
   sym->tweaking = 1;
   file_push (sym->file);
 }

      obstack_free (&temporary_obstack, temporary_firstobj);
    }

  fclose (stream);
  return (file_stack != ((void*)0));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct spec_list {int name_len; char* name; char** ptr_spec; scalar_t__ alloc_p; struct spec_list* next; } ;
struct compiler {int dummy; } ;
struct TYPE_5__ {char* suffix; char* spec; } ;


 int FALSE ;
 int ISALPHA (unsigned char) ;
 int ISSPACE (unsigned char) ;
 int R_OK ;
 TYPE_1__* compilers ;
 int fatal (char*,...) ;
 char* find_a_file (int *,char*,int ,int) ;
 int free (void*) ;
 char* link_command_spec ;
 char* load_specs (char const*) ;
 int memset (TYPE_1__*,int ,int) ;
 int n_compilers ;
 int notice (char*,char*,...) ;
 char* save_string (char*,int) ;
 int set_spec (char*,char*) ;
 char* skip_whitespace (char*) ;
 struct spec_list* specs ;
 int startfile_prefixes ;
 scalar_t__ strcmp (char*,char*) ;
 int strncmp (char*,char*,int) ;
 scalar_t__ verbose_flag ;
 TYPE_1__* xrealloc (TYPE_1__*,int) ;

__attribute__((used)) static void
read_specs (const char *filename, int main_p)
{
  char *buffer;
  char *p;

  buffer = load_specs (filename);


  p = buffer;
  while (1)
    {
      char *suffix;
      char *spec;
      char *in, *out, *p1, *p2, *p3;


      p = skip_whitespace (p);
      if (*p == 0)
 break;




      if (*p == '%' && !main_p)
 {
   p1 = p;
   while (*p && *p != '\n')
     p++;


   p++;

   if (!strncmp (p1, "%include", sizeof ("%include") - 1)
       && (p1[sizeof "%include" - 1] == ' '
    || p1[sizeof "%include" - 1] == '\t'))
     {
       char *new_filename;

       p1 += sizeof ("%include");
       while (*p1 == ' ' || *p1 == '\t')
  p1++;

       if (*p1++ != '<' || p[-2] != '>')
  fatal ("specs %%include syntax malformed after %ld characters",
         (long) (p1 - buffer + 1));

       p[-2] = '\0';
       new_filename = find_a_file (&startfile_prefixes, p1, R_OK, 1);
       read_specs (new_filename ? new_filename : p1, FALSE);
       continue;
     }
   else if (!strncmp (p1, "%include_noerr", sizeof "%include_noerr" - 1)
     && (p1[sizeof "%include_noerr" - 1] == ' '
         || p1[sizeof "%include_noerr" - 1] == '\t'))
     {
       char *new_filename;

       p1 += sizeof "%include_noerr";
       while (*p1 == ' ' || *p1 == '\t')
  p1++;

       if (*p1++ != '<' || p[-2] != '>')
  fatal ("specs %%include syntax malformed after %ld characters",
         (long) (p1 - buffer + 1));

       p[-2] = '\0';
       new_filename = find_a_file (&startfile_prefixes, p1, R_OK, 1);
       if (new_filename)
  read_specs (new_filename, FALSE);
       else if (verbose_flag)
  notice ("could not find specs file %s\n", p1);
       continue;
     }
   else if (!strncmp (p1, "%rename", sizeof "%rename" - 1)
     && (p1[sizeof "%rename" - 1] == ' '
         || p1[sizeof "%rename" - 1] == '\t'))
     {
       int name_len;
       struct spec_list *sl;
       struct spec_list *newsl;


       p1 += sizeof "%rename";
       while (*p1 == ' ' || *p1 == '\t')
  p1++;

       if (! ISALPHA ((unsigned char) *p1))
  fatal ("specs %%rename syntax malformed after %ld characters",
         (long) (p1 - buffer));

       p2 = p1;
       while (*p2 && !ISSPACE ((unsigned char) *p2))
  p2++;

       if (*p2 != ' ' && *p2 != '\t')
  fatal ("specs %%rename syntax malformed after %ld characters",
         (long) (p2 - buffer));

       name_len = p2 - p1;
       *p2++ = '\0';
       while (*p2 == ' ' || *p2 == '\t')
  p2++;

       if (! ISALPHA ((unsigned char) *p2))
  fatal ("specs %%rename syntax malformed after %ld characters",
         (long) (p2 - buffer));


       p3 = p2;
       while (*p3 && !ISSPACE ((unsigned char) *p3))
  p3++;

       if (p3 != p - 1)
  fatal ("specs %%rename syntax malformed after %ld characters",
         (long) (p3 - buffer));
       *p3 = '\0';

       for (sl = specs; sl; sl = sl->next)
  if (name_len == sl->name_len && !strcmp (sl->name, p1))
    break;

       if (!sl)
  fatal ("specs %s spec was not found to be renamed", p1);

       if (strcmp (p1, p2) == 0)
  continue;

       for (newsl = specs; newsl; newsl = newsl->next)
  if (strcmp (newsl->name, p2) == 0)
    fatal ("%s: attempt to rename spec '%s' to already defined spec '%s'",
      filename, p1, p2);

       if (verbose_flag)
  {
    notice ("rename spec %s to %s\n", p1, p2);



  }

       set_spec (p2, *(sl->ptr_spec));
       if (sl->alloc_p)
  free ((void *) *(sl->ptr_spec));

       *(sl->ptr_spec) = "";
       sl->alloc_p = 0;
       continue;
     }
   else
     fatal ("specs unknown %% command after %ld characters",
     (long) (p1 - buffer));
 }


      p1 = p;
      while (*p1 && *p1 != ':' && *p1 != '\n')
 p1++;


      if (*p1 != ':')
 fatal ("specs file malformed after %ld characters",
        (long) (p1 - buffer));


      p2 = p1;
      while (p2 > buffer && (p2[-1] == ' ' || p2[-1] == '\t'))
 p2--;


      suffix = save_string (p, p2 - p);

      p = skip_whitespace (p1 + 1);
      if (p[1] == 0)
 fatal ("specs file malformed after %ld characters",
        (long) (p - buffer));

      p1 = p;

      while (*p1 && !(*p1 == '\n' && (p1[1] == '\n' || p1[1] == '\0')))
 p1++;


      spec = save_string (p, p1 - p);
      p = p1;


      in = spec;
      out = spec;
      while (*in != 0)
 {
   if (in[0] == '\\' && in[1] == '\n')
     in += 2;
   else if (in[0] == '#')
     while (*in && *in != '\n')
       in++;

   else
     *out++ = *in++;
 }
      *out = 0;

      if (suffix[0] == '*')
 {
   if (! strcmp (suffix, "*link_command"))
     link_command_spec = spec;
   else
     set_spec (suffix + 1, spec);
 }
      else
 {

   compilers
     = xrealloc (compilers,
   (n_compilers + 2) * sizeof (struct compiler));

   compilers[n_compilers].suffix = suffix;
   compilers[n_compilers].spec = spec;
   n_compilers++;
   memset (&compilers[n_compilers], 0, sizeof compilers[n_compilers]);
 }

      if (*suffix == 0)
 link_command_spec = spec;
    }

  if (link_command_spec == 0)
    fatal ("spec file has no spec for linking");
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct print_file_list {char const* filename; unsigned int last_line; scalar_t__ first; struct print_file_list* next; } ;
typedef int bfd_vma ;
typedef int bfd ;
typedef int asection ;


 unsigned int SHOW_PRECEDING_CONTEXT_LINES ;
 int bfd_find_nearest_line (int *,int *,int ,int ,char const**,char const**,unsigned int*) ;
 int dump_lines (struct print_file_list*,unsigned int,unsigned int) ;
 scalar_t__ file_start_context ;
 int free (char const*) ;
 char const* prev_functionname ;
 unsigned int prev_line ;
 struct print_file_list* print_files ;
 int printf (char*,char const*,...) ;
 scalar_t__ strcmp (char const*,char const*) ;
 int strcpy (char const*,char const*) ;
 scalar_t__ strlen (char const*) ;
 int syms ;
 struct print_file_list* update_source_path (char const*) ;
 scalar_t__ with_line_numbers ;
 scalar_t__ with_source_code ;
 char* xmalloc (scalar_t__) ;

__attribute__((used)) static void
show_line (bfd *abfd, asection *section, bfd_vma addr_offset)
{
  const char *filename;
  const char *functionname;
  unsigned int line;

  if (! with_line_numbers && ! with_source_code)
    return;

  if (! bfd_find_nearest_line (abfd, section, syms, addr_offset, &filename,
          &functionname, &line))
    return;

  if (filename != ((void*)0) && *filename == '\0')
    filename = ((void*)0);
  if (functionname != ((void*)0) && *functionname == '\0')
    functionname = ((void*)0);

  if (with_line_numbers)
    {
      if (functionname != ((void*)0)
   && (prev_functionname == ((void*)0)
       || strcmp (functionname, prev_functionname) != 0))
 printf ("%s():\n", functionname);
      if (line > 0 && line != prev_line)
 printf ("%s:%u\n", filename == ((void*)0) ? "???" : filename, line);
    }

  if (with_source_code
      && filename != ((void*)0)
      && line > 0)
    {
      struct print_file_list **pp, *p;
      unsigned l;

      for (pp = &print_files; *pp != ((void*)0); pp = &(*pp)->next)
 if (strcmp ((*pp)->filename, filename) == 0)
   break;
      p = *pp;

      if (p == ((void*)0))
   p = update_source_path (filename);

      if (p != ((void*)0) && line != p->last_line)
 {
   if (file_start_context && p->first)
     l = 1;
   else
     {
       l = line - SHOW_PRECEDING_CONTEXT_LINES;
       if (l >= line)
  l = 1;
       if (p->last_line >= l && p->last_line <= line)
  l = p->last_line + 1;
     }
   dump_lines (p, l, line);
   p->last_line = line;
   p->first = 0;
 }
    }

  if (functionname != ((void*)0)
      && (prev_functionname == ((void*)0)
   || strcmp (functionname, prev_functionname) != 0))
    {
      if (prev_functionname != ((void*)0))
 free (prev_functionname);
      prev_functionname = xmalloc (strlen (functionname) + 1);
      strcpy (prev_functionname, functionname);
    }

  if (line > 0 && line != prev_line)
    prev_line = line;
}

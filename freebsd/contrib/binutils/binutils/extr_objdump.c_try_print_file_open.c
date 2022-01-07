
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct print_file_list {char const* filename; char const* modname; int first; struct print_file_list* next; scalar_t__ last_line; int maxline; int mapsize; int * map; int linemap; } ;


 int free (struct print_file_list*) ;
 int index_file (int *,int ,int *) ;
 struct print_file_list* print_files ;
 int * slurp_file (char const*,int *) ;
 struct print_file_list* xmalloc (int) ;

__attribute__((used)) static struct print_file_list *
try_print_file_open (const char *origname, const char *modname)
{
  struct print_file_list *p;

  p = xmalloc (sizeof (struct print_file_list));

  p->map = slurp_file (modname, &p->mapsize);
  if (p->map == ((void*)0))
    {
      free (p);
      return ((void*)0);
    }

  p->linemap = index_file (p->map, p->mapsize, &p->maxline);
  p->last_line = 0;
  p->filename = origname;
  p->modname = modname;
  p->next = print_files;
  p->first = 1;
  print_files = p;
  return p;
}

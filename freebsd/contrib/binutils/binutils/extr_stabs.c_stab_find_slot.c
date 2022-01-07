
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stab_types {int * types; struct stab_types* next; } ;
struct stab_handle {unsigned int files; struct stab_types** file_types; } ;
typedef int debug_type ;


 int STAB_TYPES_SLOTS ;
 char* _ (char*) ;
 int fprintf (int ,char*,int) ;
 int memset (struct stab_types*,int ,int) ;
 int stderr ;
 scalar_t__ xmalloc (int) ;

__attribute__((used)) static debug_type *
stab_find_slot (struct stab_handle *info, const int *typenums)
{
  int filenum;
  int index;
  struct stab_types **ps;

  filenum = typenums[0];
  index = typenums[1];

  if (filenum < 0 || (unsigned int) filenum >= info->files)
    {
      fprintf (stderr, _("Type file number %d out of range\n"), filenum);
      return ((void*)0);
    }
  if (index < 0)
    {
      fprintf (stderr, _("Type index number %d out of range\n"), index);
      return ((void*)0);
    }

  ps = info->file_types + filenum;

  while (index >= STAB_TYPES_SLOTS)
    {
      if (*ps == ((void*)0))
 {
   *ps = (struct stab_types *) xmalloc (sizeof **ps);
   memset (*ps, 0, sizeof **ps);
 }
      ps = &(*ps)->next;
      index -= STAB_TYPES_SLOTS;
    }
  if (*ps == ((void*)0))
    {
      *ps = (struct stab_types *) xmalloc (sizeof **ps);
      memset (*ps, 0, sizeof **ps);
    }

  return (*ps)->types + index;
}

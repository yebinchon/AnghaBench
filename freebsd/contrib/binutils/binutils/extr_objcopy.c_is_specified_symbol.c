
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symlist {char* name; struct symlist* next; } ;
typedef int bfd_boolean ;


 int FALSE ;
 int TRUE ;
 scalar_t__ fnmatch (char*,char const*,int ) ;
 scalar_t__ strcmp (char const*,char*) ;
 scalar_t__ wildcard ;

__attribute__((used)) static bfd_boolean
is_specified_symbol (const char *name, struct symlist *list)
{
  struct symlist *tmp_list;

  if (wildcard)
    {
      for (tmp_list = list; tmp_list; tmp_list = tmp_list->next)
 if (*(tmp_list->name) != '!')
   {
     if (!fnmatch (tmp_list->name, name, 0))
       return TRUE;
   }
 else
   {
     if (fnmatch (tmp_list->name + 1, name, 0))
       return TRUE;
   }
    }
  else
    {
      for (tmp_list = list; tmp_list; tmp_list = tmp_list->next)
 if (strcmp (name, tmp_list->name) == 0)
   return TRUE;
    }

  return FALSE;
}

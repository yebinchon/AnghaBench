
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exclude_list_struct {int type; struct exclude_list_struct* next; void* string; } ;


 struct exclude_list_struct* excludes ;
 int free (char*) ;
 int strcpy (void*,char*) ;
 int strlen (char*) ;
 char* strtok (char*,char*) ;
 void* xmalloc (int) ;
 char* xstrdup (char const*) ;

void
pe_dll_add_excludes (const char *new_excludes, const int type)
{
  char *local_copy;
  char *exclude_string;

  local_copy = xstrdup (new_excludes);

  exclude_string = strtok (local_copy, ",:");
  for (; exclude_string; exclude_string = strtok (((void*)0), ",:"))
    {
      struct exclude_list_struct *new_exclude;

      new_exclude = xmalloc (sizeof (struct exclude_list_struct));
      new_exclude->string = xmalloc (strlen (exclude_string) + 1);
      strcpy (new_exclude->string, exclude_string);
      new_exclude->type = type;
      new_exclude->next = excludes;
      excludes = new_exclude;
    }

  free (local_copy);
}

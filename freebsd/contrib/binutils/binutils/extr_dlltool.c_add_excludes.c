
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list {char* string; struct string_list* next; } ;


 int _ (char*) ;
 struct string_list* excludes ;
 int free (char*) ;
 int inform (int ,char*) ;
 int sprintf (char*,char*,char*) ;
 int strlen (char*) ;
 char* strtok (char*,char*) ;
 scalar_t__ xmalloc (int) ;
 char* xstrdup (char const*) ;

__attribute__((used)) static void
add_excludes (const char *new_excludes)
{
  char *local_copy;
  char *exclude_string;

  local_copy = xstrdup (new_excludes);

  exclude_string = strtok (local_copy, ",:");
  for (; exclude_string; exclude_string = strtok (((void*)0), ",:"))
    {
      struct string_list *new_exclude;

      new_exclude = ((struct string_list *)
       xmalloc (sizeof (struct string_list)));
      new_exclude->string = (char *) xmalloc (strlen (exclude_string) + 2);

      if (*exclude_string == '@')
 sprintf (new_exclude->string, "%s", exclude_string);
      else
 sprintf (new_exclude->string, "_%s", exclude_string);
      new_exclude->next = excludes;
      excludes = new_exclude;


      inform (_("Excluding symbol: %s"), exclude_string);
    }

  free (local_copy);
}

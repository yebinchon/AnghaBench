
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list {int name; struct string_list* next; } ;


 scalar_t__ IS_DIR_SEPARATOR (char const) ;
 struct string_list* directory_list ;
 int strlen (int ) ;
 int strncmp (char const*,int ,int) ;

__attribute__((used)) static int
directory_specified_p (const char *name)
{
  struct string_list *p;

  for (p = directory_list; p; p = p->next)
    if (!strncmp (name, p->name, strlen (p->name))
 && IS_DIR_SEPARATOR (name[strlen (p->name)]))
      {
 const char *q = name + strlen (p->name) + 1;



 while (*q++)
   if (IS_DIR_SEPARATOR (*(q-1)))
     goto lose;
 return 1;

      lose: ;
      }

  return 0;
}

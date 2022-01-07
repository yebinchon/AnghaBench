
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char const* old_name; char const* new_name; scalar_t__ flags; struct TYPE_4__* next; } ;
typedef TYPE_1__ section_rename ;
typedef scalar_t__ flagword ;


 int _ (char*) ;
 int fatal (int ,char const*) ;
 TYPE_1__* section_rename_list ;
 scalar_t__ strcmp (char const*,char const*) ;
 TYPE_1__* xmalloc (int) ;

__attribute__((used)) static void
add_section_rename (const char * old_name, const char * new_name,
      flagword flags)
{
  section_rename * rename;


  for (rename = section_rename_list; rename != ((void*)0); rename = rename->next)
    if (strcmp (rename->old_name, old_name) == 0)
      {

 if (strcmp (rename->new_name, new_name) == 0
     && rename->flags == flags)
   return;

 fatal (_("Multiple renames of section %s"), old_name);
      }

  rename = xmalloc (sizeof (* rename));

  rename->old_name = old_name;
  rename->new_name = new_name;
  rename->flags = flags;
  rename->next = section_rename_list;

  section_rename_list = rename;
}

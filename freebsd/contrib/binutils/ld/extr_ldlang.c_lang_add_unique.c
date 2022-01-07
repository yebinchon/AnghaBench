
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unique_sections {struct unique_sections* next; int name; } ;


 scalar_t__ strcmp (int ,char const*) ;
 struct unique_sections* unique_section_list ;
 struct unique_sections* xmalloc (int) ;
 int xstrdup (char const*) ;

void
lang_add_unique (const char *name)
{
  struct unique_sections *ent;

  for (ent = unique_section_list; ent; ent = ent->next)
    if (strcmp (ent->name, name) == 0)
      return;

  ent = xmalloc (sizeof *ent);
  ent->name = xstrdup (name);
  ent->next = unique_section_list;
  unique_section_list = ent;
}

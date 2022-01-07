
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct itbl_entry {int name; struct itbl_entry* next; } ;
typedef int e_type ;
typedef int e_processor ;


 struct itbl_entry** get_entries (int ,int ) ;
 int strcmp (int ,char*) ;

__attribute__((used)) static struct itbl_entry *
find_entry_byname (e_processor processor,
     e_type type, char *n)
{
  struct itbl_entry *e, **es;

  es = get_entries (processor, type);
  for (e = *es; e; e = e->next)
    {
      if (!strcmp (e->name, n))
 return e;
    }
  return 0;
}

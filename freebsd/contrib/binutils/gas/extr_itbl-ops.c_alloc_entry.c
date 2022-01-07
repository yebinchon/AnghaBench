
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct itbl_entry {char* name; unsigned long value; struct itbl_entry* next; int type; int processor; } ;
typedef int e_type ;
typedef int e_processor ;


 struct itbl_entry** get_entries (int ,int ) ;
 scalar_t__ malloc (int) ;
 int memset (struct itbl_entry*,int ,int) ;
 int strcpy (char*,char*) ;

__attribute__((used)) static struct itbl_entry *
alloc_entry (e_processor processor, e_type type,
      char *name, unsigned long value)
{
  struct itbl_entry *e, **es;
  if (!name)
    return 0;
  e = (struct itbl_entry *) malloc (sizeof (struct itbl_entry));
  if (e)
    {
      memset (e, 0, sizeof (struct itbl_entry));
      e->name = (char *) malloc (sizeof (strlen (name)) + 1);
      if (e->name)
 strcpy (e->name, name);
      e->processor = processor;
      e->type = type;
      e->value = value;
      es = get_entries (e->processor, e->type);
      e->next = *es;
      *es = e;
    }
  return e;
}

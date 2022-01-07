
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dump_list_entry {int type; struct dump_list_entry* next; int name; } ;


 int _ (char*) ;
 struct dump_list_entry* dump_sects_byname ;
 int error (int ) ;
 struct dump_list_entry* malloc (int) ;
 int strdup (char const*) ;

__attribute__((used)) static void
request_dump_byname (const char *section, int type)
{
  struct dump_list_entry *new_request;

  new_request = malloc (sizeof (struct dump_list_entry));
  if (!new_request)
    error (_("Out of memory allocating dump request table.\n"));

  new_request->name = strdup (section);
  if (!new_request->name)
    error (_("Out of memory allocating dump request table.\n"));

  new_request->type = type;

  new_request->next = dump_sects_byname;
  dump_sects_byname = new_request;
}

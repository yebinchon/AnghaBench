
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dump_list_entry {int name; int type; struct dump_list_entry* next; } ;
struct TYPE_2__ {unsigned int e_shnum; } ;


 int SECTION_NAME (scalar_t__) ;
 int _ (char*) ;
 struct dump_list_entry* dump_sects_byname ;
 TYPE_1__ elf_header ;
 int request_dump (unsigned int,int ) ;
 scalar_t__ section_headers ;
 scalar_t__ streq (int ,int ) ;
 int warn (int ,int ) ;

__attribute__((used)) static void
initialise_dumps_byname (void)
{
  struct dump_list_entry *cur;

  for (cur = dump_sects_byname; cur; cur = cur->next)
    {
      unsigned int i;
      int any;

      for (i = 0, any = 0; i < elf_header.e_shnum; i++)
 if (streq (SECTION_NAME (section_headers + i), cur->name))
   {
     request_dump (i, cur->type);
     any = 1;
   }

      if (!any)
 warn (_("Section '%s' was not dumped because it does not exist!\n"),
       cur->name);
    }
}

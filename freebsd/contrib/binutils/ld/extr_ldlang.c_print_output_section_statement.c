
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int head; } ;
struct TYPE_8__ {scalar_t__ name; TYPE_1__ children; TYPE_3__* bfd_section; } ;
typedef TYPE_2__ lang_output_section_statement_type ;
struct TYPE_9__ {scalar_t__ vma; scalar_t__ lma; int size; } ;
typedef TYPE_3__ asection ;


 int SECTION_NAME_MAP_LENGTH ;
 char* _ (char*) ;
 TYPE_2__* abs_output_section ;
 int minfo (char*,scalar_t__,...) ;
 scalar_t__ print_dot ;
 int print_nl () ;
 int print_space () ;
 int print_statement_list (int ,TYPE_2__*) ;
 int strlen (scalar_t__) ;

__attribute__((used)) static void
print_output_section_statement
  (lang_output_section_statement_type *output_section_statement)
{
  asection *section = output_section_statement->bfd_section;
  int len;

  if (output_section_statement != abs_output_section)
    {
      minfo ("\n%s", output_section_statement->name);

      if (section != ((void*)0))
 {
   print_dot = section->vma;

   len = strlen (output_section_statement->name);
   if (len >= SECTION_NAME_MAP_LENGTH - 1)
     {
       print_nl ();
       len = 0;
     }
   while (len < SECTION_NAME_MAP_LENGTH)
     {
       print_space ();
       ++len;
     }

   minfo ("0x%V %W", section->vma, section->size);

   if (section->vma != section->lma)
     minfo (_(" load address 0x%V"), section->lma);
 }

      print_nl ();
    }

  print_statement_list (output_section_statement->children.head,
   output_section_statement);
}

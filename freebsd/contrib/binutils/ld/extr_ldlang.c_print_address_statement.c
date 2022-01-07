
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int address; int section_name; } ;
typedef TYPE_1__ lang_address_statement_type ;


 int _ (char*) ;
 int exp_print_tree (int ) ;
 int minfo (int ,int ) ;
 int print_nl () ;

__attribute__((used)) static void
print_address_statement (lang_address_statement_type *address)
{
  minfo (_("Address of section %s set to "), address->section_name);
  exp_print_tree (address->address);
  print_nl ();
}

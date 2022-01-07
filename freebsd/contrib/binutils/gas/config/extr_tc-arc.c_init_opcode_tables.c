
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int valueT ;
struct TYPE_4__ {int name; } ;
struct TYPE_3__ {char* name; } ;


 int arc_get_opcode_mach (int,int ) ;
 int arc_opcode_init_tables (int ) ;
 TYPE_2__* arc_reg_names ;
 int arc_reg_names_count ;
 int * arc_suffix_hash ;
 TYPE_1__* arc_suffixes ;
 int arc_suffixes_count ;
 int as_fatal (char*) ;
 int as_warn (char*) ;
 int bfd_arch_arc ;
 int bfd_set_arch_mach (int ,int ,int) ;
 int cpu_tables_init_p ;
 int hash_insert (int *,char*,void*) ;
 int * hash_new () ;
 int reg_section ;
 int stdoutput ;
 scalar_t__ strcmp (char*,char*) ;
 int symbol_create (int ,int ,int ,int *) ;
 scalar_t__ symbol_find (int ) ;
 int symbol_table_insert (int ) ;
 int target_big_endian ;
 int zero_address_frag ;

__attribute__((used)) static void
init_opcode_tables (int mach)
{
  int i;
  char *last;

  if ((arc_suffix_hash = hash_new ()) == ((void*)0))
    as_fatal ("virtual memory exhausted");

  if (!bfd_set_arch_mach (stdoutput, bfd_arch_arc, mach))
    as_warn ("could not set architecture and machine");



  arc_opcode_init_tables (arc_get_opcode_mach (mach, target_big_endian));



  last = "";
  for (i = 0; i < arc_suffixes_count; i++)
    {
      if (strcmp (arc_suffixes[i].name, last) != 0)
 hash_insert (arc_suffix_hash, arc_suffixes[i].name, (void *) (arc_suffixes + i));
      last = arc_suffixes[i].name;
    }
  for (i = 0; i < arc_reg_names_count; i++)
    {
      if (symbol_find (arc_reg_names[i].name))
 continue;


      symbol_table_insert (symbol_create (arc_reg_names[i].name,
       reg_section,
       (valueT) &arc_reg_names[i],
       &zero_address_frag));
    }


  cpu_tables_init_p = 1;
}

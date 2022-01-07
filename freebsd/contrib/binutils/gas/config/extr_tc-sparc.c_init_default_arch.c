
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sparc_arch {scalar_t__ default_arch_size; int arch_type; int opcode_arch; } ;


 scalar_t__ SPARC_OPCODE_ARCH_BAD ;
 int _ (char*) ;
 int as_fatal (int ) ;
 int default_arch ;
 scalar_t__ default_arch_size ;
 int default_arch_type ;
 int default_init_p ;
 struct sparc_arch* lookup_arch (int ) ;
 scalar_t__ max_architecture ;
 scalar_t__ sparc_arch_size ;
 scalar_t__ sparc_opcode_lookup_arch (int ) ;

__attribute__((used)) static void
init_default_arch ()
{
  struct sparc_arch *sa = lookup_arch (default_arch);

  if (sa == ((void*)0)
      || sa->default_arch_size == 0)
    as_fatal (_("Invalid default architecture, broken assembler."));

  max_architecture = sparc_opcode_lookup_arch (sa->opcode_arch);
  if (max_architecture == SPARC_OPCODE_ARCH_BAD)
    as_fatal (_("Bad opcode table, broken assembler."));
  default_arch_size = sparc_arch_size = sa->default_arch_size;
  default_init_p = 1;
  default_arch_type = sa->arch_type;
}

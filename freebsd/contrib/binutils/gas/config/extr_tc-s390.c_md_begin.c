
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s390_opcode {scalar_t__ min_cpu; int name; } ;
typedef scalar_t__ bfd_boolean ;
typedef int PTR ;


 scalar_t__ FALSE ;
 scalar_t__ S390_OPCODE_Z900 ;
 scalar_t__ TRUE ;
 int _ (char*) ;
 int abort () ;
 int as_bad (int ,int ) ;
 int as_warn (char*) ;
 int bfd_set_private_flags (int ,scalar_t__) ;
 int bss_section ;
 scalar_t__ current_cpu ;
 int data_section ;
 char* hash_insert (int ,int ,int ) ;
 int hash_new () ;
 int record_alignment (int ,int) ;
 int s390_arch_size ;
 int s390_cie_data_alignment ;
 scalar_t__ s390_flags ;
 int s390_num_opcodes ;
 int s390_num_opformats ;
 int s390_opcode_hash ;
 struct s390_opcode* s390_opcodes ;
 int s390_opformat_hash ;
 struct s390_opcode* s390_opformats ;
 int stdoutput ;
 scalar_t__ strcmp (int ,int ) ;
 int text_section ;

void
md_begin ()
{
  register const struct s390_opcode *op;
  const struct s390_opcode *op_end;
  bfd_boolean dup_insn = FALSE;
  const char *retval;


  if (s390_arch_size == 64 && current_cpu < S390_OPCODE_Z900)
    as_warn ("The 64 bit file format is used without esame instructions.");

  s390_cie_data_alignment = -s390_arch_size / 8;


  if (s390_flags)
    bfd_set_private_flags (stdoutput, s390_flags);


  s390_opformat_hash = hash_new ();

  op_end = s390_opformats + s390_num_opformats;
  for (op = s390_opformats; op < op_end; op++)
    {
      retval = hash_insert (s390_opformat_hash, op->name, (PTR) op);
      if (retval != (const char *) ((void*)0))
 {
   as_bad (_("Internal assembler error for instruction format %s"),
    op->name);
   dup_insn = TRUE;
 }
    }


  s390_opcode_hash = hash_new ();

  op_end = s390_opcodes + s390_num_opcodes;
  for (op = s390_opcodes; op < op_end; op++)
    if (op->min_cpu <= current_cpu)
      {
 retval = hash_insert (s390_opcode_hash, op->name, (PTR) op);
 if (retval != (const char *) ((void*)0))
   {
     as_bad (_("Internal assembler error for instruction %s"),
      op->name);
     dup_insn = TRUE;
   }
 while (op < op_end - 1 && strcmp (op->name, op[1].name) == 0)
   op++;
      }

  if (dup_insn)
    abort ();

  record_alignment (text_section, 2);
  record_alignment (data_section, 2);
  record_alignment (bss_section, 2);

}

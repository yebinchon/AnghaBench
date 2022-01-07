
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alpha_opcode {int dummy; } ;
struct alpha_insn {int dummy; } ;
typedef int expressionS ;


 int BFD_RELOC_UNUSED ;
 int _ (char*) ;
 int alpha_opcode_hash ;
 int alpha_target_name ;
 int as_bad (int ,char const*,...) ;
 int assemble_insn (struct alpha_opcode const*,int const*,int,struct alpha_insn*,int ) ;
 struct alpha_opcode* find_opcode_match (struct alpha_opcode const*,int const*,int*,int*) ;
 scalar_t__ hash_find (int ,char const*) ;

__attribute__((used)) static void
assemble_tokens_to_insn (const char *opname,
    const expressionS *tok,
    int ntok,
    struct alpha_insn *insn)
{
  const struct alpha_opcode *opcode;


  opcode = (const struct alpha_opcode *) hash_find (alpha_opcode_hash, opname);
  if (opcode)
    {
      int cpumatch;
      opcode = find_opcode_match (opcode, tok, &ntok, &cpumatch);
      if (opcode)
 {
   assemble_insn (opcode, tok, ntok, insn, BFD_RELOC_UNUSED);
   return;
 }
      else if (cpumatch)
 as_bad (_("inappropriate arguments for opcode `%s'"), opname);
      else
 as_bad (_("opcode `%s' not supported for target %s"), opname,
  alpha_target_name);
    }
  else
    as_bad (_("unknown opcode `%s'"), opname);
}

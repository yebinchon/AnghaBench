
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_7__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct alpha_opcode {int dummy; } ;
struct alpha_macro {int arg; int (* emit ) (TYPE_1__ const*,int,int ) ;} ;
struct alpha_insn {int sequence; } ;
struct TYPE_8__ {int X_add_number; int X_op; } ;
typedef TYPE_1__ expressionS ;
typedef scalar_t__ bfd_reloc_code_real_type ;
struct TYPE_9__ {scalar_t__ reloc; } ;


 TYPE_7__* ALPHA_RELOC_TABLE (int ) ;
 scalar_t__ BFD_RELOC_UNUSED ;
 scalar_t__ USER_RELOC_P (int ) ;
 int _ (char*) ;
 int alpha_macro_hash ;
 int alpha_opcode_hash ;
 int alpha_target_name ;
 int as_bad (int ,char const*,...) ;
 int assemble_insn (struct alpha_opcode const*,TYPE_1__ const*,int,struct alpha_insn*,scalar_t__) ;
 int emit_insn (struct alpha_insn*) ;
 struct alpha_macro* find_macro_match (struct alpha_macro const*,TYPE_1__ const*,int*) ;
 struct alpha_opcode* find_opcode_match (struct alpha_opcode const*,TYPE_1__ const*,int*,int*) ;
 scalar_t__ hash_find (int ,char const*) ;
 int stub1 (TYPE_1__ const*,int,int ) ;

__attribute__((used)) static void
assemble_tokens (const char *opname,
   const expressionS *tok,
   int ntok,
   int local_macros_on)
{
  int found_something = 0;
  const struct alpha_opcode *opcode;
  const struct alpha_macro *macro;
  int cpumatch = 1;
  bfd_reloc_code_real_type reloc = BFD_RELOC_UNUSED;
  if (local_macros_on)
    {
      macro = ((const struct alpha_macro *)
        hash_find (alpha_macro_hash, opname));
      if (macro)
 {
   found_something = 1;
   macro = find_macro_match (macro, tok, &ntok);
   if (macro)
     {
       (*macro->emit) (tok, ntok, macro->arg);
       return;
     }
 }
    }


  opcode = (const struct alpha_opcode *) hash_find (alpha_opcode_hash, opname);
  if (opcode)
    {
      found_something = 1;
      opcode = find_opcode_match (opcode, tok, &ntok, &cpumatch);
      if (opcode)
 {
   struct alpha_insn insn;
   assemble_insn (opcode, tok, ntok, &insn, reloc);


   if (reloc != BFD_RELOC_UNUSED)
     insn.sequence = tok[ntok].X_add_number;

   emit_insn (&insn);
   return;
 }
    }

  if (found_something)
    {
      if (cpumatch)
 as_bad (_("inappropriate arguments for opcode `%s'"), opname);
      else
 as_bad (_("opcode `%s' not supported for target %s"), opname,
  alpha_target_name);
    }
  else
    as_bad (_("unknown opcode `%s'"), opname);
}

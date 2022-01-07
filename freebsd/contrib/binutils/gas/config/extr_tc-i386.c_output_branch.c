
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int symbolS ;
typedef int relax_substateT ;
typedef scalar_t__ offsetT ;
struct TYPE_5__ {char base_opcode; } ;
struct TYPE_8__ {scalar_t__ prefixes; int * reloc; TYPE_2__* op; TYPE_1__ tm; int * prefix; } ;
struct TYPE_7__ {scalar_t__ X_op; scalar_t__ X_add_number; int * X_add_symbol; } ;
struct TYPE_6__ {TYPE_3__* disps; } ;


 int CODE16 ;
 scalar_t__ CODE_16BIT ;
 int COND_JUMP ;
 int COND_JUMP86 ;
 int CS_PREFIX_OPCODE ;
 int Cpu386 ;
 size_t DATA_PREFIX ;
 int DATA_PREFIX_OPCODE ;
 int DS_PREFIX_OPCODE ;
 int ENCODE_RELAX_STATE (int ,int ) ;
 unsigned char JUMP_PC_RELATIVE ;
 scalar_t__ O_constant ;
 scalar_t__ O_symbol ;
 size_t REX_PREFIX ;
 size_t SEG_PREFIX ;
 int SMALL ;
 int UNCOND_JUMP ;
 int _ (char*) ;
 int as_warn (int ) ;
 int cpu_arch_flags ;
 scalar_t__ flag_code ;
 int frag_grow (int) ;
 char* frag_more (int) ;
 int frag_var (int ,int,int ,int,int *,scalar_t__,char*) ;
 TYPE_4__ i ;
 int intel_syntax ;
 int * make_expr_symbol (TYPE_3__*) ;
 int rs_machine_dependent ;

__attribute__((used)) static void
output_branch (void)
{
  char *p;
  int code16;
  int prefix;
  relax_substateT subtype;
  symbolS *sym;
  offsetT off;

  code16 = 0;
  if (flag_code == CODE_16BIT)
    code16 = CODE16;

  prefix = 0;
  if (i.prefix[DATA_PREFIX] != 0)
    {
      prefix = 1;
      i.prefixes -= 1;
      code16 ^= CODE16;
    }

  if (i.prefix[SEG_PREFIX] == CS_PREFIX_OPCODE
      || i.prefix[SEG_PREFIX] == DS_PREFIX_OPCODE )
    {
      prefix++;
      i.prefixes--;
    }
  if (i.prefix[REX_PREFIX] != 0)
    {
      prefix++;
      i.prefixes--;
    }

  if (i.prefixes != 0 && !intel_syntax)
    as_warn (_("skipping prefixes on this instruction"));






  frag_grow (prefix + 2 + 4);

  p = frag_more (prefix + 1);
  if (i.prefix[DATA_PREFIX] != 0)
    *p++ = DATA_PREFIX_OPCODE;
  if (i.prefix[SEG_PREFIX] == CS_PREFIX_OPCODE
      || i.prefix[SEG_PREFIX] == DS_PREFIX_OPCODE)
    *p++ = i.prefix[SEG_PREFIX];
  if (i.prefix[REX_PREFIX] != 0)
    *p++ = i.prefix[REX_PREFIX];
  *p = i.tm.base_opcode;

  if ((unsigned char) *p == JUMP_PC_RELATIVE)
    subtype = ENCODE_RELAX_STATE (UNCOND_JUMP, SMALL);
  else if ((cpu_arch_flags & Cpu386) != 0)
    subtype = ENCODE_RELAX_STATE (COND_JUMP, SMALL);
  else
    subtype = ENCODE_RELAX_STATE (COND_JUMP86, SMALL);
  subtype |= code16;

  sym = i.op[0].disps->X_add_symbol;
  off = i.op[0].disps->X_add_number;

  if (i.op[0].disps->X_op != O_constant
      && i.op[0].disps->X_op != O_symbol)
    {

      sym = make_expr_symbol (i.op[0].disps);
      off = 0;
    }



  frag_var (rs_machine_dependent, 5, i.reloc[0], subtype, sym, off, p);
}

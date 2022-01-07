
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int fx_signed; } ;
typedef TYPE_3__ fixS ;
struct TYPE_12__ {int fr_literal; } ;
struct TYPE_8__ {int opcode_modifier; int base_opcode; } ;
struct TYPE_11__ {scalar_t__* prefix; scalar_t__ prefixes; int * reloc; TYPE_2__* op; TYPE_1__ tm; } ;
struct TYPE_9__ {int disps; } ;


 size_t ADDR_PREFIX ;
 scalar_t__ ADDR_PREFIX_OPCODE ;
 int CODE16 ;
 scalar_t__ CODE_16BIT ;
 scalar_t__ CS_PREFIX_OPCODE ;
 size_t DATA_PREFIX ;
 scalar_t__ DATA_PREFIX_OPCODE ;
 scalar_t__ DS_PREFIX_OPCODE ;
 int FRAG_APPEND_1_CHAR (scalar_t__) ;
 int JumpByte ;
 size_t REX_PREFIX ;
 size_t SEG_PREFIX ;
 int _ (char*) ;
 int as_warn (int ) ;
 TYPE_3__* fix_new_exp (TYPE_5__*,char*,int,int ,int,int ) ;
 scalar_t__ flag_code ;
 char* frag_more (int) ;
 TYPE_5__* frag_now ;
 TYPE_4__ i ;
 int intel_syntax ;
 int reloc (int,int,int,int ) ;

__attribute__((used)) static void
output_jump (void)
{
  char *p;
  int size;
  fixS *fixP;

  if (i.tm.opcode_modifier & JumpByte)
    {

      size = 1;
      if (i.prefix[ADDR_PREFIX] != 0)
 {
   FRAG_APPEND_1_CHAR (ADDR_PREFIX_OPCODE);
   i.prefixes -= 1;
 }

      if (i.prefix[SEG_PREFIX] == CS_PREFIX_OPCODE
   || i.prefix[SEG_PREFIX] == DS_PREFIX_OPCODE )
 {
   FRAG_APPEND_1_CHAR (i.prefix[SEG_PREFIX]);
   i.prefixes--;
 }
    }
  else
    {
      int code16;

      code16 = 0;
      if (flag_code == CODE_16BIT)
 code16 = CODE16;

      if (i.prefix[DATA_PREFIX] != 0)
 {
   FRAG_APPEND_1_CHAR (DATA_PREFIX_OPCODE);
   i.prefixes -= 1;
   code16 ^= CODE16;
 }

      size = 4;
      if (code16)
 size = 2;
    }

  if (i.prefix[REX_PREFIX] != 0)
    {
      FRAG_APPEND_1_CHAR (i.prefix[REX_PREFIX]);
      i.prefixes -= 1;
    }

  if (i.prefixes != 0 && !intel_syntax)
    as_warn (_("skipping prefixes on this instruction"));

  p = frag_more (1 + size);
  *p++ = i.tm.base_opcode;

  fixP = fix_new_exp (frag_now, p - frag_now->fr_literal, size,
        i.op[0].disps, 1, reloc (size, 1, 1, i.reloc[0]));




  if (size == 1)
    fixP->fx_signed = 1;
}

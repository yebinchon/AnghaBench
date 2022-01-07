
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int valueT ;
typedef unsigned short value ;
typedef scalar_t__ segT ;
typedef int offsetT ;
struct TYPE_6__ {int fx_where; int fx_r_type; int fx_done; int fx_addnumber; int fx_offset; int fx_size; int fx_line; int fx_file; TYPE_1__* fx_frag; int * fx_addsy; scalar_t__ fx_pcrel; } ;
typedef TYPE_2__ fixS ;
struct TYPE_5__ {char* fr_literal; int fr_opcode; } ;
 int BFD_RELOC_UNUSED ;


 int INSN16_SIZE ;
 int INSN_SIZE ;
 scalar_t__ S_GET_SEGMENT (int *) ;
 scalar_t__ S_IS_DEFINED (int *) ;
 int S_IS_EXTERNAL (int *) ;
 int S_IS_WEAK (int *) ;
 int S_SET_WEAK (int *) ;
 int _ (char*) ;
 int as_bad_where (int ,int ,int ,unsigned int) ;
 int assert (int) ;
 int md_chars_to_number (char*,int) ;
 int md_number_to_chars (char*,int,int) ;
 scalar_t__ md_pcrel_from (TYPE_2__*) ;

void
md_apply_fix (fixS *fixP, valueT *valP, segT seg)
{
  offsetT value = *valP;
  offsetT abs_value = 0;
  offsetT newval;
  offsetT content;
  unsigned short HI, LO;

  char *buf = fixP->fx_frag->fr_literal + fixP->fx_where;

  assert (fixP->fx_r_type < BFD_RELOC_UNUSED);
  if (fixP->fx_addsy == 0 && !fixP->fx_pcrel)
    {
      if (fixP->fx_r_type != 134)
        fixP->fx_done = 1;
    }




  if (fixP->fx_pcrel)
    {
      if (fixP->fx_addsy != ((void*)0)
   && S_IS_DEFINED (fixP->fx_addsy)
   && S_GET_SEGMENT (fixP->fx_addsy) != seg)
 value += md_pcrel_from (fixP);
    }


  fixP->fx_addnumber = value;

  switch (fixP->fx_r_type)
    {
    case 142:
      if (fixP->fx_done)
        {
          newval = md_chars_to_number (buf, INSN_SIZE);
          HI = (value) >> 16;
          newval |= (HI & 0x3fff) << 1;
          newval |= ((HI >> 14) & 0x3) << 16;
          md_number_to_chars (buf, newval, INSN_SIZE);
        }
      break;
    case 141:
      if (fixP->fx_done)
        {
          newval = md_chars_to_number (buf, INSN_SIZE);
          LO = (value) & 0xffff;
          newval |= (LO & 0x3fff) << 1;
          newval |= ((LO >> 14) & 0x3) << 16;
          md_number_to_chars (buf, newval, INSN_SIZE);
        }
      break;
    case 130:
      {
        content = md_chars_to_number (buf, INSN_SIZE);
        value = fixP->fx_offset;
        content = (content & ~0x3ff7ffe) | ((value << 1) & 0x3ff0000) | (value & 0x7fff);
        md_number_to_chars (buf, content, INSN_SIZE);
      }
      break;
    case 136:
      if ((S_GET_SEGMENT (fixP->fx_addsy) != seg) || (fixP->fx_addsy != ((void*)0) && S_IS_EXTERNAL (fixP->fx_addsy)))
        value = fixP->fx_offset;
      else
        fixP->fx_done = 1;

      content = md_chars_to_number (buf, INSN_SIZE);
      if ((fixP->fx_frag->fr_opcode != 0) && ((content & 0x80008000) != 0x80008000))
        {
          if ((value & 0x80000000) == 0x80000000)
            abs_value = 0xffffffff - value + 1;
          if ((abs_value & 0xffffff00) != 0)
            {
              as_bad_where (fixP->fx_file, fixP->fx_line,
                            _(" branch relocation truncate (0x%x) [-2^8 ~ 2^8]"), (unsigned int)value);
              return;
            }
          content = md_chars_to_number (buf, INSN16_SIZE);
          content &= 0xff00;
          content = (content & 0xff00) | ((value >> 1) & 0xff);
          md_number_to_chars (buf, content, INSN16_SIZE);
          fixP->fx_r_type = 138;
          fixP->fx_size = 2;
        }
      else
        {
          if ((value & 0x80000000) == 0x80000000)
            abs_value = 0xffffffff - value + 1;
          if ((abs_value & 0xfff80000) != 0)
            {
              as_bad_where (fixP->fx_file, fixP->fx_line,
                            _(" branch relocation truncate (0x%x) [-2^19 ~ 2^19]"), (unsigned int)value);
              return;
            }
          content = md_chars_to_number (buf, INSN_SIZE);
          content &= 0xfc00fc01;
          content = (content & 0xfc00fc01) | (value & 0x3fe) | ((value << 6) & 0x3ff0000);
          md_number_to_chars (buf, content, INSN_SIZE);
        }
      break;
    case 137:
      content = md_chars_to_number (buf, INSN16_SIZE);
      content &= 0xf001;
      value = fixP->fx_offset & 0xfff;
      content = (content & 0xfc01) | (value & 0xffe);
      md_number_to_chars (buf, content, INSN16_SIZE);
      break;
    case 138:
      content = md_chars_to_number (buf, INSN_SIZE);
      if ((fixP->fx_frag->fr_opcode != 0) && ((content & 0x80008000) == 0x80008000))
        {
          if ((S_GET_SEGMENT (fixP->fx_addsy) != seg) ||
              (fixP->fx_addsy != ((void*)0) && S_IS_EXTERNAL (fixP->fx_addsy)))
            value = fixP->fx_offset;
          else
            fixP->fx_done = 1;
          if ((value & 0x80000000) == 0x80000000)
            abs_value = 0xffffffff - value + 1;
          if ((abs_value & 0xfff80000) != 0)
            {
              as_bad_where (fixP->fx_file, fixP->fx_line,
                            _(" branch relocation truncate (0x%x) [-2^19 ~ 2^19]"), (unsigned int)value);
              return;
            }
          content = md_chars_to_number (buf, INSN_SIZE);
          content = (content & 0xfc00fc01) | (value & 0x3fe) | ((value << 6) & 0x3ff0000);
          md_number_to_chars (buf, content, INSN_SIZE);
          fixP->fx_r_type = 136;
          fixP->fx_size = 4;
          break;
        }
      else
        {

          if ((S_GET_SEGMENT (fixP->fx_addsy) != seg) ||
              (fixP->fx_addsy != ((void*)0) && S_IS_EXTERNAL (fixP->fx_addsy)))
            value = fixP->fx_offset;
          else
            fixP->fx_done = 1;

          if ((value & 0x80000000) == 0x80000000)
            abs_value = 0xffffffff - value + 1;
          if ((abs_value & 0xffffff00) != 0)
            {
              as_bad_where (fixP->fx_file, fixP->fx_line,
                            _(" branch relocation truncate (0x%x)  [-2^8 ~ 2^8]"), (unsigned int)value);
              return;
            }
          content = md_chars_to_number (buf, INSN16_SIZE);
          content = (content & 0xff00) | ((value >> 1) & 0xff);
          md_number_to_chars (buf, content, INSN16_SIZE);
          break;
        }
    case 144:
      if (fixP->fx_done || fixP->fx_pcrel)
 md_number_to_chars (buf, value, 1);







      break;

    case 146:
      if (fixP->fx_done || fixP->fx_pcrel)
        md_number_to_chars (buf, value, 2);







      break;
    case 139:
    case 145:
      if (fixP->fx_done || fixP->fx_pcrel)
        md_number_to_chars (buf, value, 4);







      break;
    case 128:
      fixP->fx_done = 0;
      if (fixP->fx_addsy && !S_IS_DEFINED (fixP->fx_addsy) && !S_IS_WEAK (fixP->fx_addsy))
        S_SET_WEAK (fixP->fx_addsy);
      break;
    case 129:
      fixP->fx_done = 0;
      break;
    case 131:
      content = md_chars_to_number (buf, INSN_SIZE);
      if ((fixP->fx_frag->fr_opcode != 0) && ((content & 0xfc1c8000) != 0x94188000))
        fixP->fx_r_type = 140;
      fixP->fx_done = 0;
      break;
    case 133:
    case 134:
    case 132:
    case 135:
    case 143:
      break;
    case 140:
    default:
      as_bad_where (fixP->fx_file, fixP->fx_line, _("bad relocation fixup type (%d)"), fixP->fx_r_type);
    }
}

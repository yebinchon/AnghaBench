
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int valueT ;
struct alpha_operand {int dummy; } ;
typedef int segT ;
typedef int offsetT ;
struct TYPE_5__ {int fx_where; int fx_r_type; int fx_offset; int fx_done; scalar_t__ fx_addsy; scalar_t__ fx_pcrel; int fx_line; int fx_file; int fx_subsy; TYPE_1__* fx_frag; struct TYPE_5__* fx_next; } ;
typedef TYPE_2__ fixS ;
struct TYPE_4__ {char* fr_literal; int fr_address; } ;



 int BFD_RELOC_16_PCREL ;


 int BFD_RELOC_32_PCREL ;

 int BFD_RELOC_64_PCREL ;
 int BFD_RELOC_ALPHA_GPDISP ;
 int S_GET_SEGMENT (scalar_t__) ;
 int S_SET_THREAD_LOCAL (scalar_t__) ;
 int _ (char*) ;
 int absolute_section ;
 int alpha_gp_symbol ;
 unsigned int alpha_gp_value ;
 scalar_t__ alpha_num_operands ;
 struct alpha_operand* alpha_operands ;
 int as_bad_where (int ,int ,int ) ;
 int as_fatal (int ,int ) ;
 int as_warn_where (int ,int ,int ,int) ;
 int assert (int) ;
 int bfd_get_reloc_code_name (int) ;
 unsigned int bfd_getl32 (char* const) ;
 unsigned int insert_operand (unsigned int,struct alpha_operand const*,int ,int ,int ) ;
 int md_number_to_chars (char* const,unsigned int,int) ;
 scalar_t__ section_symbol (int ) ;
 int sign_extend_16 (int) ;

void
md_apply_fix (fixS *fixP, valueT * valP, segT seg)
{
  char * const fixpos = fixP->fx_frag->fr_literal + fixP->fx_where;
  valueT value = * valP;
  unsigned image, size;

  switch (fixP->fx_r_type)
    {




    case 144:
      {
 fixS *next = fixP->fx_next;




 if (next)
   fixP->fx_offset = (next->fx_frag->fr_address + next->fx_where
        - fixP->fx_frag->fr_address - fixP->fx_where);

 value = (value - sign_extend_16 (value)) >> 16;
      }



      goto do_reloc_gp;

    case 143:
      value = sign_extend_16 (value);
      fixP->fx_offset = 0;




    do_reloc_gp:
      fixP->fx_addsy = section_symbol (seg);
      md_number_to_chars (fixpos, value, 2);
      break;

    case 156:
      if (fixP->fx_pcrel)
 fixP->fx_r_type = BFD_RELOC_16_PCREL;
      size = 2;
      goto do_reloc_xx;

    case 154:
      if (fixP->fx_pcrel)
 fixP->fx_r_type = BFD_RELOC_32_PCREL;
      size = 4;
      goto do_reloc_xx;

    case 153:
      if (fixP->fx_pcrel)
 fixP->fx_r_type = BFD_RELOC_64_PCREL;
      size = 8;

    do_reloc_xx:
      if (fixP->fx_pcrel == 0 && fixP->fx_addsy == 0)
 {
   md_number_to_chars (fixpos, value, size);
   goto done;
 }
      return;
    case 130:

    case 131:
    case 142:
    case 141:
      return;

    case 155:
      if (fixP->fx_pcrel == 0 && fixP->fx_addsy == 0)
 {
   image = bfd_getl32 (fixpos);
   image = (image & ~0x1FFFFF) | ((value >> 2) & 0x1FFFFF);
   goto write_done;
 }
      return;

    case 140:
      if (fixP->fx_pcrel == 0 && fixP->fx_addsy == 0)
 {
   image = bfd_getl32 (fixpos);
   image = (image & ~0x3FFF) | ((value >> 2) & 0x3FFF);
   goto write_done;
 }
      return;
    case 147:
    case 137:
    case 139:
    case 151:
      return;

    case 128:
    case 129:
      return;

    default:
      {
 const struct alpha_operand *operand;

 if ((int) fixP->fx_r_type >= 0)
   as_fatal (_("unhandled relocation type %s"),
      bfd_get_reloc_code_name (fixP->fx_r_type));

 assert (-(int) fixP->fx_r_type < (int) alpha_num_operands);
 operand = &alpha_operands[-(int) fixP->fx_r_type];





 if (fixP->fx_addsy != 0
     && S_GET_SEGMENT (fixP->fx_addsy) != absolute_section)
   as_bad_where (fixP->fx_file, fixP->fx_line,
   _("non-absolute expression in constant field"));

 image = bfd_getl32 (fixpos);
 image = insert_operand (image, operand, (offsetT) value,
    fixP->fx_file, fixP->fx_line);
      }
      goto write_done;
    }

  if (fixP->fx_addsy != 0 || fixP->fx_pcrel != 0)
    return;
  else
    {
      as_warn_where (fixP->fx_file, fixP->fx_line,
       _("type %d reloc done?\n"), (int) fixP->fx_r_type);
      goto done;
    }

write_done:
  md_number_to_chars (fixpos, image, 4);

done:
  fixP->fx_done = 1;
}

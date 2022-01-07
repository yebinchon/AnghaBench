
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int valueT ;
typedef int unw_rec_list ;
struct TYPE_4__ {int fr_var; int fr_literal; int fr_fix; scalar_t__ fr_offset; int fr_type; scalar_t__ fr_opcode; } ;
typedef TYPE_1__ fragS ;
typedef int bfd_vma ;
struct TYPE_5__ {int pointer_size; int flags; } ;


 int EF_IA_64_ABI64 ;
 int assert (int) ;
 int calc_record_size (int *) ;
 int fixup_unw_records (int *,int ) ;
 TYPE_2__ md ;
 int md_number_to_chars (int,int,int) ;
 int output_vbyte_mem ;
 int process_unw_records (int *,int ) ;
 int rs_fill ;
 int vbyte_mem_ptr ;

void
ia64_convert_frag (fragS *frag)
{
  unw_rec_list *list;
  int len, size, pad;
  valueT flag_value;


  list = (unw_rec_list *) frag->fr_opcode;
  fixup_unw_records (list, 0);

  len = calc_record_size (list);

  pad = len % md.pointer_size;
  if (pad != 0)
    len += md.pointer_size - pad;

  size = len + 8;

  if (frag->fr_offset)
    size += md.pointer_size;



  assert (frag->fr_var >= size);



  if (frag->fr_offset)
    {
      if (md.flags & EF_IA_64_ABI64)
 flag_value = (bfd_vma) 3 << 32;
      else

 flag_value = (bfd_vma) 0x1003 << 32;
    }
  else
    flag_value = 0;

 md_number_to_chars (frag->fr_literal,
       (((bfd_vma) 1 << 48)
        | flag_value
        | (len / md.pointer_size)),
       8);


  vbyte_mem_ptr = frag->fr_literal + 8;
  process_unw_records (list, output_vbyte_mem);


  if (pad != 0)
    md_number_to_chars (frag->fr_literal + len + 8 - md.pointer_size + pad, 0,
   md.pointer_size - pad);

  frag->fr_fix += size;
  frag->fr_type = rs_fill;
  frag->fr_var = 0;
  frag->fr_offset = 0;
}

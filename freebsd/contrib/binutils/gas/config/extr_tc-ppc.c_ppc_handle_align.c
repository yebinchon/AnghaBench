
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int valueT ;
struct frag {int fr_address; int fr_fix; char* fr_literal; int fr_var; int fr_offset; struct frag* fr_next; int fr_type; } ;


 int PPC_OPCODE_POWER6 ;
 scalar_t__ SIZEOF_STRUCT_FRAG ;
 int md_number_to_chars (char*,int,int) ;
 int memcpy (struct frag*,struct frag*,scalar_t__) ;
 int ppc_cpu ;
 int rs_fill ;
 struct frag* xmalloc (scalar_t__) ;

void
ppc_handle_align (struct frag *fragP)
{
  valueT count = (fragP->fr_next->fr_address
    - (fragP->fr_address + fragP->fr_fix));

  if (count != 0 && (count & 3) == 0)
    {
      char *dest = fragP->fr_literal + fragP->fr_fix;

      fragP->fr_var = 4;
      md_number_to_chars (dest, 0x60000000, 4);

      if ((ppc_cpu & PPC_OPCODE_POWER6) != 0)
 {





   if (count > 4)
     {
       struct frag *group_nop = xmalloc (SIZEOF_STRUCT_FRAG + 4);

       memcpy (group_nop, fragP, SIZEOF_STRUCT_FRAG);
       group_nop->fr_address = group_nop->fr_next->fr_address - 4;
       group_nop->fr_fix = 0;
       group_nop->fr_offset = 1;
       group_nop->fr_type = rs_fill;
       fragP->fr_next = group_nop;
       dest = group_nop->fr_literal;
     }

   md_number_to_chars (dest, 0x60210000, 4);
 }
    }
}

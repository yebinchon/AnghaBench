
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ bfd_byte ;


 scalar_t__ DW_CFA_nop ;
 scalar_t__ DW_CFA_set_loc ;
 int skip_cfa_op (scalar_t__**,scalar_t__*,unsigned int) ;

__attribute__((used)) static bfd_byte *
skip_non_nops (bfd_byte *buf, bfd_byte *end, unsigned int encoded_ptr_width,
        unsigned int *set_loc_count)
{
  bfd_byte *last;

  last = buf;
  while (buf < end)
    if (*buf == DW_CFA_nop)
      buf++;
    else
      {
 if (*buf == DW_CFA_set_loc)
   ++*set_loc_count;
 if (!skip_cfa_op (&buf, end, encoded_ptr_width))
   return 0;
 last = buf;
      }
  return last;
}

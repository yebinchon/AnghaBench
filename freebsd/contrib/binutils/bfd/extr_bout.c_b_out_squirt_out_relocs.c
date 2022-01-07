
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_9__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct relocation_info {int dummy; } ;
typedef int bfd_size_type ;
typedef int bfd_boolean ;
typedef int bfd ;
struct TYPE_12__ {int i; } ;
struct TYPE_13__ {TYPE_2__ udata; TYPE_1__* section; } ;
typedef TYPE_3__ asymbol ;
struct TYPE_14__ {unsigned int reloc_count; int target_index; TYPE_5__** orelocation; } ;
typedef TYPE_4__ asection ;
struct TYPE_15__ {TYPE_3__** sym_ptr_ptr; int * howto; int address; } ;
typedef TYPE_5__ arelent ;
struct TYPE_16__ {TYPE_3__* symbol; } ;
struct TYPE_11__ {TYPE_4__* output_section; } ;


 int ARRAY_SIZE (int *) ;
 int FALSE ;
 int H_PUT_32 (int *,int ,unsigned char*) ;
 int TRUE ;
 TYPE_9__* bfd_abs_section_ptr ;
 int bfd_bwrite (void*,int,int *) ;
 scalar_t__ bfd_header_big_endian (int *) ;
 scalar_t__ bfd_is_abs_section (TYPE_4__*) ;
 scalar_t__ bfd_is_com_section (TYPE_4__*) ;
 scalar_t__ bfd_is_und_section (TYPE_4__*) ;
 struct relocation_info* bfd_malloc (int) ;
 int free (struct relocation_info*) ;
 int * howto_align_table ;
 int howto_reloc_abs32code ;
 int howto_reloc_callj ;
 int howto_reloc_pcrel13 ;
 int howto_reloc_pcrel24 ;

__attribute__((used)) static bfd_boolean
b_out_squirt_out_relocs (bfd *abfd, asection *section)
{
  arelent **generic;
  int r_extern = 0;
  int r_idx;
  int incode_mask;
  int len_1;
  unsigned int count = section->reloc_count;
  struct relocation_info *native, *natptr;
  bfd_size_type natsize;
  int extern_mask, pcrel_mask, len_2, callj_mask;

  if (count == 0)
    return TRUE;

  generic = section->orelocation;
  natsize = (bfd_size_type) count * sizeof (struct relocation_info);
  native = bfd_malloc (natsize);
  if (!native && natsize != 0)
    return FALSE;

  if (bfd_header_big_endian (abfd))
    {

      pcrel_mask = 0x80;
      extern_mask = 0x10;
      len_2 = 0x40;
      len_1 = 0x20;
      callj_mask = 0x02;
      incode_mask = 0x08;
    }
  else
    {

      pcrel_mask = 0x01;
      extern_mask = 0x08;
      len_2 = 0x04;
      len_1 = 0x02;
      callj_mask = 0x40;
      incode_mask = 0x10;
    }

  for (natptr = native; count > 0; --count, ++natptr, ++generic)
    {
      arelent *g = *generic;
      unsigned char *raw = (unsigned char *) natptr;
      asymbol *sym = *(g->sym_ptr_ptr);
      asection *output_section = sym->section->output_section;

      H_PUT_32 (abfd, g->address, raw);


      r_idx = 0;


      if (g->howto== &howto_reloc_callj)
 raw[7] = callj_mask + pcrel_mask + len_2;
      else if (g->howto == &howto_reloc_pcrel24)
 raw[7] = pcrel_mask + len_2;
      else if (g->howto == &howto_reloc_pcrel13)
 raw[7] = pcrel_mask + len_1;
      else if (g->howto == &howto_reloc_abs32code)
 raw[7] = len_2 + incode_mask;
      else if (g->howto >= howto_align_table
        && g->howto <= (howto_align_table + ARRAY_SIZE (howto_align_table) - 1))
 {

   r_idx = -2;
   r_extern = 0;
   raw[7] = (pcrel_mask
      | ((g->howto - howto_align_table) << 1));
 }
      else
 raw[7] = len_2;

      if (r_idx != 0)
                                            ;
      else if (bfd_is_com_section (output_section)
        || bfd_is_abs_section (output_section)
        || bfd_is_und_section (output_section))
 {
   if (bfd_abs_section_ptr->symbol == sym)
     {


       r_idx = 0;
       r_extern = 0;
     }
   else
     {

       r_extern = 1;
       r_idx = (*g->sym_ptr_ptr)->udata.i;
     }
 }
      else
 {

   r_extern = 0;
   r_idx = output_section->target_index;
 }

      if (bfd_header_big_endian (abfd))
 {
   raw[4] = (unsigned char) (r_idx >> 16);
   raw[5] = (unsigned char) (r_idx >> 8);
   raw[6] = (unsigned char) (r_idx );
 }
      else
 {
   raw[6] = (unsigned char) (r_idx >> 16);
   raw[5] = (unsigned char) (r_idx>> 8);
   raw[4] = (unsigned char) (r_idx );
 }

      if (r_extern)
 raw[7] |= extern_mask;
    }

  if (bfd_bwrite ((void *) native, natsize, abfd) != natsize)
    {
      free (native);
      return FALSE;
    }

  free (native);

  return TRUE;
}

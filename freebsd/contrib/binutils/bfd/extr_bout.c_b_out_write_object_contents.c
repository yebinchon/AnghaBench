
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct external_exec {int dummy; } ;
typedef int file_ptr ;
typedef scalar_t__ bfd_size_type ;
typedef int bfd_boolean ;
typedef int bfd ;
struct TYPE_13__ {int flags; } ;
typedef TYPE_1__ asymbol ;
struct TYPE_16__ {int a_syms; int a_trsize; int a_drsize; int a_dload; int a_tload; int a_balign; int a_dalign; int a_talign; int a_entry; int a_bss; int a_data; int a_text; int a_info; } ;
struct TYPE_15__ {int alignment_power; int size; } ;
struct TYPE_14__ {int reloc_count; int vma; int alignment_power; int size; } ;


 int BMAGIC ;
 int BSF_DEBUGGING ;
 scalar_t__ EXEC_BYTES_SIZE ;
 int FALSE ;
 scalar_t__ N_DROFF (TYPE_6__) ;
 scalar_t__ N_SYMOFF (TYPE_6__) ;
 scalar_t__ N_TROFF (TYPE_6__) ;
 int SEEK_SET ;
 int TRUE ;
 int aout_32_make_sections (int *) ;
 int aout_32_write_syms (int *) ;
 int b_out_squirt_out_relocs (int *,TYPE_3__*) ;
 int b_out_symbol_cmp ;
 scalar_t__ bfd_bwrite (void*,scalar_t__,int *) ;
 TYPE_1__** bfd_get_outsymbols (int *) ;
 int bfd_get_start_address (int *) ;
 int bfd_get_symcount (int *) ;
 scalar_t__ bfd_seek (int *,int ,int ) ;
 int bout_swap_exec_header_out (int *,TYPE_6__*,struct external_exec*) ;
 TYPE_6__* exec_hdr (int *) ;
 TYPE_5__* obj_bsssec (int *) ;
 TYPE_3__* obj_datasec (int *) ;
 TYPE_3__* obj_textsec (int *) ;
 int qsort (TYPE_1__**,size_t,int,int ) ;

__attribute__((used)) static bfd_boolean
b_out_write_object_contents (bfd *abfd)
{
  struct external_exec swapped_hdr;
  bfd_size_type amt;

  if (! aout_32_make_sections (abfd))
    return FALSE;

  exec_hdr (abfd)->a_info = BMAGIC;

  exec_hdr (abfd)->a_text = obj_textsec (abfd)->size;
  exec_hdr (abfd)->a_data = obj_datasec (abfd)->size;
  exec_hdr (abfd)->a_bss = obj_bsssec (abfd)->size;
  exec_hdr (abfd)->a_syms = bfd_get_symcount (abfd) * 12;
  exec_hdr (abfd)->a_entry = bfd_get_start_address (abfd);
  exec_hdr (abfd)->a_trsize = (obj_textsec (abfd)->reloc_count) * 8;
  exec_hdr (abfd)->a_drsize = (obj_datasec (abfd)->reloc_count) * 8;

  exec_hdr (abfd)->a_talign = obj_textsec (abfd)->alignment_power;
  exec_hdr (abfd)->a_dalign = obj_datasec (abfd)->alignment_power;
  exec_hdr (abfd)->a_balign = obj_bsssec (abfd)->alignment_power;

  exec_hdr (abfd)->a_tload = obj_textsec (abfd)->vma;
  exec_hdr (abfd)->a_dload = obj_datasec (abfd)->vma;

  bout_swap_exec_header_out (abfd, exec_hdr (abfd), &swapped_hdr);

  amt = EXEC_BYTES_SIZE;
  if (bfd_seek (abfd, (file_ptr) 0, SEEK_SET) != 0
      || bfd_bwrite ((void *) &swapped_hdr, amt, abfd) != amt)
    return FALSE;


  if (bfd_get_symcount (abfd) != 0)
    {





      asymbol **outsyms, **p, **q;

      outsyms = bfd_get_outsymbols (abfd);
      p = outsyms + bfd_get_symcount (abfd);

      for (q = p--; p >= outsyms; p--)
 {
   if ((*p)->flags & BSF_DEBUGGING)
     {
       asymbol *t = *--q;
       *q = *p;
       *p = t;
     }
 }

      if (q > outsyms)
 qsort (outsyms, (size_t) (q - outsyms), sizeof (asymbol*),
        b_out_symbol_cmp);


      if (bfd_seek (abfd, (file_ptr) (N_SYMOFF (*exec_hdr (abfd))), SEEK_SET)
   != 0)
 return FALSE;

      if (! aout_32_write_syms (abfd))
 return FALSE;

      if (bfd_seek (abfd, (file_ptr) (N_TROFF (*exec_hdr (abfd))), SEEK_SET)
   != 0)
 return FALSE;

      if (!b_out_squirt_out_relocs (abfd, obj_textsec (abfd)))
 return FALSE;
      if (bfd_seek (abfd, (file_ptr) (N_DROFF (*exec_hdr (abfd))), SEEK_SET)
   != 0)
 return FALSE;

      if (!b_out_squirt_out_relocs (abfd, obj_datasec (abfd)))
 return FALSE;
    }
  return TRUE;
}

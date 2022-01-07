
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {TYPE_5__* section; } ;
struct TYPE_14__ {TYPE_1__ indirect; } ;
struct bfd_link_order {int offset; scalar_t__ size; TYPE_2__ u; } ;
struct bfd_link_info {int relocatable; int hash; } ;
struct bfd_link_hash_entry {int dummy; } ;
typedef int file_ptr ;
typedef scalar_t__ bfd_size_type ;
typedef int bfd_byte ;
typedef int bfd_boolean ;
typedef int bfd ;
struct TYPE_15__ {struct bfd_link_hash_entry* p; } ;
struct TYPE_16__ {int flags; TYPE_3__ udata; } ;
typedef TYPE_4__ asymbol ;
struct TYPE_17__ {int flags; scalar_t__ size; int output_offset; scalar_t__ reloc_count; scalar_t__ rawsize; int * orelocation; struct TYPE_17__* output_section; int * owner; } ;
typedef TYPE_5__ asection ;


 int BFD_ASSERT (int) ;
 int BSF_CONSTRUCTOR ;
 int BSF_GLOBAL ;
 int BSF_INDIRECT ;
 int BSF_WARNING ;
 int BSF_WEAK ;
 int FALSE ;
 int SEC_HAS_CONTENTS ;
 int TRUE ;
 int _ (char*) ;
 int _bfd_error_handler (int ,int ,int ) ;
 TYPE_4__** _bfd_generic_link_get_symbols (int *) ;
 int _bfd_generic_link_get_symcount (int *) ;
 int bfd_asymbol_name (TYPE_4__*) ;
 int bfd_error_wrong_format ;
 int * bfd_get_relocated_section_contents (int *,struct bfd_link_info*,struct bfd_link_order*,int *,int ,TYPE_4__**) ;
 int bfd_get_section (TYPE_4__*) ;
 int bfd_get_target (int *) ;
 scalar_t__ bfd_is_com_section (int ) ;
 scalar_t__ bfd_is_ind_section (int ) ;
 scalar_t__ bfd_is_und_section (int ) ;
 struct bfd_link_hash_entry* bfd_link_hash_lookup (int ,int ,int ,int ,int ) ;
 int * bfd_malloc (scalar_t__) ;
 int bfd_octets_per_byte (int *) ;
 int bfd_set_error (int ) ;
 int bfd_set_section_contents (int *,TYPE_5__*,int *,int,scalar_t__) ;
 struct bfd_link_hash_entry* bfd_wrapped_link_hash_lookup (int *,struct bfd_link_info*,int ,int ,int ,int ) ;
 int free (int *) ;
 int generic_link_read_symbols (int *) ;
 int set_symbol_from_hash (TYPE_4__*,struct bfd_link_hash_entry*) ;
 int stub1 (int ,int ,int ) ;

__attribute__((used)) static bfd_boolean
default_indirect_link_order (bfd *output_bfd,
        struct bfd_link_info *info,
        asection *output_section,
        struct bfd_link_order *link_order,
        bfd_boolean generic_linker)
{
  asection *input_section;
  bfd *input_bfd;
  bfd_byte *contents = ((void*)0);
  bfd_byte *new_contents;
  bfd_size_type sec_size;
  file_ptr loc;

  BFD_ASSERT ((output_section->flags & SEC_HAS_CONTENTS) != 0);

  input_section = link_order->u.indirect.section;
  input_bfd = input_section->owner;
  if (input_section->size == 0)
    return TRUE;

  BFD_ASSERT (input_section->output_section == output_section);
  BFD_ASSERT (input_section->output_offset == link_order->offset);
  BFD_ASSERT (input_section->size == link_order->size);

  if (info->relocatable
      && input_section->reloc_count > 0
      && output_section->orelocation == ((void*)0))
    {





      (*_bfd_error_handler)
 (_("Attempt to do relocatable link with %s input and %s output"),
  bfd_get_target (input_bfd), bfd_get_target (output_bfd));
      bfd_set_error (bfd_error_wrong_format);
      return FALSE;
    }

  if (! generic_linker)
    {
      asymbol **sympp;
      asymbol **symppend;





      if (! generic_link_read_symbols (input_bfd))
 return FALSE;






      sympp = _bfd_generic_link_get_symbols (input_bfd);
      symppend = sympp + _bfd_generic_link_get_symcount (input_bfd);
      for (; sympp < symppend; sympp++)
 {
   asymbol *sym;
   struct bfd_link_hash_entry *h;

   sym = *sympp;

   if ((sym->flags & (BSF_INDIRECT
        | BSF_WARNING
        | BSF_GLOBAL
        | BSF_CONSTRUCTOR
        | BSF_WEAK)) != 0
       || bfd_is_und_section (bfd_get_section (sym))
       || bfd_is_com_section (bfd_get_section (sym))
       || bfd_is_ind_section (bfd_get_section (sym)))
     {


       if (sym->udata.p != ((void*)0))
  h = sym->udata.p;
       else if (bfd_is_und_section (bfd_get_section (sym)))
  h = bfd_wrapped_link_hash_lookup (output_bfd, info,
        bfd_asymbol_name (sym),
        FALSE, FALSE, TRUE);
       else
  h = bfd_link_hash_lookup (info->hash,
       bfd_asymbol_name (sym),
       FALSE, FALSE, TRUE);
       if (h != ((void*)0))
  set_symbol_from_hash (sym, h);
     }
 }
    }


  sec_size = (input_section->rawsize > input_section->size
       ? input_section->rawsize
       : input_section->size);
  contents = bfd_malloc (sec_size);
  if (contents == ((void*)0) && sec_size != 0)
    goto error_return;
  new_contents = (bfd_get_relocated_section_contents
    (output_bfd, info, link_order, contents, info->relocatable,
     _bfd_generic_link_get_symbols (input_bfd)));
  if (!new_contents)
    goto error_return;


  loc = input_section->output_offset * bfd_octets_per_byte (output_bfd);
  if (! bfd_set_section_contents (output_bfd, output_section,
      new_contents, loc, input_section->size))
    goto error_return;

  if (contents != ((void*)0))
    free (contents);
  return TRUE;

 error_return:
  if (contents != ((void*)0))
    free (contents);
  return FALSE;
}

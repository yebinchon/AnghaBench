
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct saved_output_info {int dummy; } ;
struct TYPE_15__ {TYPE_4__* section; } ;
struct TYPE_16__ {TYPE_1__ indirect; } ;
struct bfd_link_order {int size; int hash; TYPE_2__ u; scalar_t__ offset; int type; int * next; struct bfd_link_callbacks* callbacks; int * input_bfds_tail; TYPE_3__* input_bfds; } ;
struct bfd_link_info {int size; int hash; TYPE_2__ u; scalar_t__ offset; int type; int * next; struct bfd_link_callbacks* callbacks; int * input_bfds_tail; TYPE_3__* input_bfds; } ;
struct bfd_link_callbacks {int einfo; int multiple_definition; int unattached_reloc; int reloc_dangerous; int reloc_overflow; int undefined_symbol; int warning; } ;
typedef int link_order ;
typedef int link_info ;
typedef int bfd_size_type ;
typedef void bfd_byte ;
struct TYPE_17__ {int section_count; int link_next; } ;
typedef TYPE_3__ bfd ;
typedef int asymbol ;
struct TYPE_18__ {int flags; scalar_t__ rawsize; scalar_t__ size; } ;
typedef TYPE_4__ asection ;


 int SEC_RELOC ;
 int _bfd_generic_link_add_symbols (TYPE_3__*,struct bfd_link_order*) ;
 int _bfd_generic_link_hash_table_create (TYPE_3__*) ;
 int _bfd_generic_link_hash_table_free (int ) ;
 int bfd_canonicalize_symtab (TYPE_3__*,int **) ;
 void* bfd_get_relocated_section_contents (TYPE_3__*,struct bfd_link_order*,struct bfd_link_order*,void*,int ,int **) ;
 int bfd_get_section_contents (TYPE_3__*,TYPE_4__*,void*,int ,int) ;
 int bfd_get_symtab_upper_bound (TYPE_3__*) ;
 int bfd_indirect_link_order ;
 void* bfd_malloc (int) ;
 int bfd_map_over_sections (TYPE_3__*,int ,void*) ;
 int free (void*) ;
 void* malloc (int) ;
 int memset (struct bfd_link_order*,int ,int) ;
 int simple_dummy_einfo ;
 int simple_dummy_multiple_definition ;
 int simple_dummy_reloc_dangerous ;
 int simple_dummy_reloc_overflow ;
 int simple_dummy_unattached_reloc ;
 int simple_dummy_undefined_symbol ;
 int simple_dummy_warning ;
 int simple_restore_output_info ;
 int simple_save_output_info ;

bfd_byte *
bfd_simple_get_relocated_section_contents (bfd *abfd,
        asection *sec,
        bfd_byte *outbuf,
        asymbol **symbol_table)
{
  struct bfd_link_info link_info;
  struct bfd_link_order link_order;
  struct bfd_link_callbacks callbacks;
  bfd_byte *contents, *data;
  int storage_needed;
  void *saved_offsets;

  if (! (sec->flags & SEC_RELOC))
    {
      bfd_size_type amt = sec->rawsize > sec->size ? sec->rawsize : sec->size;
      bfd_size_type size = sec->rawsize ? sec->rawsize : sec->size;

      if (outbuf == ((void*)0))
 contents = bfd_malloc (amt);
      else
 contents = outbuf;

      if (contents)
 bfd_get_section_contents (abfd, sec, contents, 0, size);

      return contents;
    }





  memset (&link_info, 0, sizeof (link_info));
  link_info.input_bfds = abfd;
  link_info.input_bfds_tail = &abfd->link_next;

  link_info.hash = _bfd_generic_link_hash_table_create (abfd);
  link_info.callbacks = &callbacks;
  callbacks.warning = simple_dummy_warning;
  callbacks.undefined_symbol = simple_dummy_undefined_symbol;
  callbacks.reloc_overflow = simple_dummy_reloc_overflow;
  callbacks.reloc_dangerous = simple_dummy_reloc_dangerous;
  callbacks.unattached_reloc = simple_dummy_unattached_reloc;
  callbacks.multiple_definition = simple_dummy_multiple_definition;
  callbacks.einfo = simple_dummy_einfo;

  memset (&link_order, 0, sizeof (link_order));
  link_order.next = ((void*)0);
  link_order.type = bfd_indirect_link_order;
  link_order.offset = 0;
  link_order.size = sec->size;
  link_order.u.indirect.section = sec;

  data = ((void*)0);
  if (outbuf == ((void*)0))
    {
      data = bfd_malloc (sec->size);
      if (data == ((void*)0))
 return ((void*)0);
      outbuf = data;
    }
  saved_offsets = malloc (sizeof (struct saved_output_info)
     * abfd->section_count);
  if (saved_offsets == ((void*)0))
    {
      if (data)
 free (data);
      return ((void*)0);
    }
  bfd_map_over_sections (abfd, simple_save_output_info, saved_offsets);

  if (symbol_table == ((void*)0))
    {
      _bfd_generic_link_add_symbols (abfd, &link_info);

      storage_needed = bfd_get_symtab_upper_bound (abfd);
      symbol_table = bfd_malloc (storage_needed);
      bfd_canonicalize_symtab (abfd, symbol_table);
    }
  else
    storage_needed = 0;

  contents = bfd_get_relocated_section_contents (abfd,
       &link_info,
       &link_order,
       outbuf,
       0,
       symbol_table);
  if (contents == ((void*)0) && data != ((void*)0))
    free (data);

  bfd_map_over_sections (abfd, simple_restore_output_info, saved_offsets);
  free (saved_offsets);

  _bfd_generic_link_hash_table_free (link_info.hash);
  return contents;
}

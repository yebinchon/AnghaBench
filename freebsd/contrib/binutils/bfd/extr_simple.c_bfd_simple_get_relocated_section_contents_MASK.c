#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct saved_output_info {int dummy; } ;
struct TYPE_15__ {TYPE_4__* section; } ;
struct TYPE_16__ {TYPE_1__ indirect; } ;
struct bfd_link_order {int size; int /*<<< orphan*/  hash; TYPE_2__ u; scalar_t__ offset; int /*<<< orphan*/  type; int /*<<< orphan*/ * next; struct bfd_link_callbacks* callbacks; int /*<<< orphan*/ * input_bfds_tail; TYPE_3__* input_bfds; } ;
struct bfd_link_info {int size; int /*<<< orphan*/  hash; TYPE_2__ u; scalar_t__ offset; int /*<<< orphan*/  type; int /*<<< orphan*/ * next; struct bfd_link_callbacks* callbacks; int /*<<< orphan*/ * input_bfds_tail; TYPE_3__* input_bfds; } ;
struct bfd_link_callbacks {int /*<<< orphan*/  einfo; int /*<<< orphan*/  multiple_definition; int /*<<< orphan*/  unattached_reloc; int /*<<< orphan*/  reloc_dangerous; int /*<<< orphan*/  reloc_overflow; int /*<<< orphan*/  undefined_symbol; int /*<<< orphan*/  warning; } ;
typedef  int /*<<< orphan*/  link_order ;
typedef  int /*<<< orphan*/  link_info ;
typedef  int bfd_size_type ;
typedef  void bfd_byte ;
struct TYPE_17__ {int section_count; int /*<<< orphan*/  link_next; } ;
typedef  TYPE_3__ bfd ;
typedef  int /*<<< orphan*/  asymbol ;
struct TYPE_18__ {int flags; scalar_t__ rawsize; scalar_t__ size; } ;
typedef  TYPE_4__ asection ;

/* Variables and functions */
 int SEC_RELOC ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,struct bfd_link_order*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ **) ; 
 void* FUNC4 (TYPE_3__*,struct bfd_link_order*,struct bfd_link_order*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,TYPE_4__*,void*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  bfd_indirect_link_order ; 
 void* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC9 (void*) ; 
 void* FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (struct bfd_link_order*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  simple_dummy_einfo ; 
 int /*<<< orphan*/  simple_dummy_multiple_definition ; 
 int /*<<< orphan*/  simple_dummy_reloc_dangerous ; 
 int /*<<< orphan*/  simple_dummy_reloc_overflow ; 
 int /*<<< orphan*/  simple_dummy_unattached_reloc ; 
 int /*<<< orphan*/  simple_dummy_undefined_symbol ; 
 int /*<<< orphan*/  simple_dummy_warning ; 
 int /*<<< orphan*/  simple_restore_output_info ; 
 int /*<<< orphan*/  simple_save_output_info ; 

bfd_byte *
FUNC12 (bfd *abfd,
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

      if (outbuf == NULL)
	contents = FUNC7 (amt);
      else
	contents = outbuf;

      if (contents)
	FUNC5 (abfd, sec, contents, 0, size);

      return contents;
    }

  /* In order to use bfd_get_relocated_section_contents, we need
     to forge some data structures that it expects.  */

  /* Fill in the bare minimum number of fields for our purposes.  */
  FUNC11 (&link_info, 0, sizeof (link_info));
  link_info.input_bfds = abfd;
  link_info.input_bfds_tail = &abfd->link_next;

  link_info.hash = FUNC1 (abfd);
  link_info.callbacks = &callbacks;
  callbacks.warning = simple_dummy_warning;
  callbacks.undefined_symbol = simple_dummy_undefined_symbol;
  callbacks.reloc_overflow = simple_dummy_reloc_overflow;
  callbacks.reloc_dangerous = simple_dummy_reloc_dangerous;
  callbacks.unattached_reloc = simple_dummy_unattached_reloc;
  callbacks.multiple_definition = simple_dummy_multiple_definition;
  callbacks.einfo = simple_dummy_einfo;

  FUNC11 (&link_order, 0, sizeof (link_order));
  link_order.next = NULL;
  link_order.type = bfd_indirect_link_order;
  link_order.offset = 0;
  link_order.size = sec->size;
  link_order.u.indirect.section = sec;

  data = NULL;
  if (outbuf == NULL)
    {
      data = FUNC7 (sec->size);
      if (data == NULL)
	return NULL;
      outbuf = data;
    }

  /* The sections in ABFD may already have output sections and offsets set.
     Because this function is primarily for debug sections, and GCC uses the
     knowledge that debug sections will generally have VMA 0 when emitting
     relocations between DWARF-2 sections (which are supposed to be
     section-relative offsets anyway), we need to reset the output offsets
     to zero.  We also need to arrange for section->output_section->vma plus
     section->output_offset to equal section->vma, which we do by setting
     section->output_section to point back to section.  Save the original
     output offset and output section to restore later.  */
  saved_offsets = FUNC10 (sizeof (struct saved_output_info)
			  * abfd->section_count);
  if (saved_offsets == NULL)
    {
      if (data)
	FUNC9 (data);
      return NULL;
    }
  FUNC8 (abfd, simple_save_output_info, saved_offsets);

  if (symbol_table == NULL)
    {
      FUNC0 (abfd, &link_info);

      storage_needed = FUNC6 (abfd);
      symbol_table = FUNC7 (storage_needed);
      FUNC3 (abfd, symbol_table);
    }
  else
    storage_needed = 0;

  contents = FUNC4 (abfd,
						 &link_info,
						 &link_order,
						 outbuf,
						 0,
						 symbol_table);
  if (contents == NULL && data != NULL)
    FUNC9 (data);

  FUNC8 (abfd, simple_restore_output_info, saved_offsets);
  FUNC9 (saved_offsets);

  FUNC2 (link_info.hash);
  return contents;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_27__   TYPE_9__ ;
typedef  struct TYPE_26__   TYPE_8__ ;
typedef  struct TYPE_25__   TYPE_7__ ;
typedef  struct TYPE_24__   TYPE_6__ ;
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
struct internal_reloc {int r_symndx; int /*<<< orphan*/  r_type; scalar_t__ r_vaddr; } ;
struct coff_link_hash_entry {int indx; } ;
struct coff_final_link_info {TYPE_9__* info; TYPE_1__* section_info; } ;
struct TYPE_23__ {TYPE_4__* p; } ;
struct TYPE_24__ {TYPE_5__ reloc; } ;
struct bfd_link_order {scalar_t__ type; int offset; TYPE_6__ u; } ;
struct TYPE_25__ {int /*<<< orphan*/  type; int /*<<< orphan*/  name; } ;
typedef  TYPE_7__ reloc_howto_type ;
typedef  int file_ptr ;
typedef  int /*<<< orphan*/  bfd_vma ;
typedef  int /*<<< orphan*/  bfd_size_type ;
typedef  int bfd_reloc_status_type ;
typedef  int /*<<< orphan*/  bfd_byte ;
typedef  int /*<<< orphan*/  bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_26__ {size_t target_index; int reloc_count; scalar_t__ vma; } ;
typedef  TYPE_8__ asection ;
struct TYPE_27__ {TYPE_2__* callbacks; } ;
struct TYPE_21__ {int /*<<< orphan*/  name; int /*<<< orphan*/  section; } ;
struct TYPE_22__ {scalar_t__ addend; TYPE_3__ u; int /*<<< orphan*/  reloc; } ;
struct TYPE_20__ {int /*<<< orphan*/  (* unattached_reloc ) (TYPE_9__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_8__*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* reloc_overflow ) (TYPE_9__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,TYPE_8__*,int /*<<< orphan*/ ) ;} ;
struct TYPE_19__ {struct coff_link_hash_entry** rel_hashes; struct internal_reloc* relocs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int FUNC0 (TYPE_7__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  bfd_error_bad_value ; 
 int /*<<< orphan*/  FUNC2 (TYPE_7__*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
#define  bfd_reloc_ok 130 
#define  bfd_reloc_outofrange 129 
#define  bfd_reloc_overflow 128 
 TYPE_7__* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ bfd_section_reloc_link_order ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_8__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,TYPE_9__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct internal_reloc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_9__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,TYPE_8__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_9__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_8__*,int /*<<< orphan*/ ) ; 

bfd_boolean
FUNC14 (bfd *output_bfd,
			    struct coff_final_link_info *finfo,
			    asection *output_section,
			    struct bfd_link_order *link_order)
{
  reloc_howto_type *howto;
  struct internal_reloc *irel;
  struct coff_link_hash_entry **rel_hash_ptr;

  howto = FUNC4 (output_bfd, link_order->u.reloc.p->reloc);
  if (howto == NULL)
    {
      FUNC6 (bfd_error_bad_value);
      return FALSE;
    }

  if (link_order->u.reloc.p->addend != 0)
    {
      bfd_size_type size;
      bfd_byte *buf;
      bfd_reloc_status_type rstat;
      bfd_boolean ok;
      file_ptr loc;

      size = FUNC2 (howto);
      buf = FUNC9 (size);
      if (buf == NULL)
	return FALSE;

      rstat = FUNC0 (howto, output_bfd,
				      (bfd_vma) link_order->u.reloc.p->addend,\
				      buf);
      switch (rstat)
	{
	case bfd_reloc_ok:
	  break;
	default:
	case bfd_reloc_outofrange:
	  FUNC1 ();
	case bfd_reloc_overflow:
	  if (! ((*finfo->info->callbacks->reloc_overflow)
		 (finfo->info, NULL,
		  (link_order->type == bfd_section_reloc_link_order
		   ? FUNC5 (output_bfd,
				       link_order->u.reloc.p->u.section)
		   : link_order->u.reloc.p->u.name),
		  howto->name, link_order->u.reloc.p->addend,
		  (bfd *) NULL, (asection *) NULL, (bfd_vma) 0)))
	    {
	      FUNC10 (buf);
	      return FALSE;
	    }
	  break;
	}
      loc = link_order->offset * FUNC3 (output_bfd);
      ok = FUNC7 (output_bfd, output_section, buf,
                                     loc, size);
      FUNC10 (buf);
      if (! ok)
	return FALSE;
    }

  /* Store the reloc information in the right place.  It will get
     swapped and written out at the end of the final_link routine.  */
  irel = (finfo->section_info[output_section->target_index].relocs
	  + output_section->reloc_count);
  rel_hash_ptr = (finfo->section_info[output_section->target_index].rel_hashes
		  + output_section->reloc_count);

  FUNC11 (irel, 0, sizeof (struct internal_reloc));
  *rel_hash_ptr = NULL;

  irel->r_vaddr = output_section->vma + link_order->offset;

  if (link_order->type == bfd_section_reloc_link_order)
    {
      /* We need to somehow locate a symbol in the right section.  The
         symbol must either have a value of zero, or we must adjust
         the addend by the value of the symbol.  FIXME: Write this
         when we need it.  The old linker couldn't handle this anyhow.  */
      FUNC1 ();
      *rel_hash_ptr = NULL;
      irel->r_symndx = 0;
    }
  else
    {
      struct coff_link_hash_entry *h;

      h = ((struct coff_link_hash_entry *)
	   FUNC8 (output_bfd, finfo->info,
					 link_order->u.reloc.p->u.name,
					 FALSE, FALSE, TRUE));
      if (h != NULL)
	{
	  if (h->indx >= 0)
	    irel->r_symndx = h->indx;
	  else
	    {
	      /* Set the index to -2 to force this symbol to get
		 written out.  */
	      h->indx = -2;
	      *rel_hash_ptr = h;
	      irel->r_symndx = 0;
	    }
	}
      else
	{
	  if (! ((*finfo->info->callbacks->unattached_reloc)
		 (finfo->info, link_order->u.reloc.p->u.name, (bfd *) NULL,
		  (asection *) NULL, (bfd_vma) 0)))
	    return FALSE;
	  irel->r_symndx = 0;
	}
    }

  /* FIXME: Is this always right?  */
  irel->r_type = howto->type;

  /* r_size is only used on the RS/6000, which needs its own linker
     routines anyhow.  r_extern is only used for ECOFF.  */

  /* FIXME: What is the right value for r_offset?  Is zero OK?  */
  ++output_section->reloc_count;

  return TRUE;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_7__ ;
typedef  struct TYPE_27__   TYPE_6__ ;
typedef  struct TYPE_26__   TYPE_5__ ;
typedef  struct TYPE_25__   TYPE_4__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;
typedef  struct TYPE_21__   TYPE_13__ ;

/* Type definitions */
struct reloc_std_external {int* r_index; int* r_type; int /*<<< orphan*/  r_address; } ;
struct reloc_ext_external {int* r_index; int* r_type; int /*<<< orphan*/  r_addend; int /*<<< orphan*/  r_address; } ;
struct TYPE_25__ {int /*<<< orphan*/  name; TYPE_13__* section; } ;
struct bfd_link_order_reloc {scalar_t__ addend; TYPE_4__ u; int /*<<< orphan*/  reloc; } ;
struct TYPE_22__ {struct bfd_link_order_reloc* p; } ;
struct TYPE_23__ {TYPE_1__ reloc; } ;
struct bfd_link_order {scalar_t__ type; scalar_t__ offset; TYPE_2__ u; } ;
struct aout_link_hash_entry {int indx; int /*<<< orphan*/  written; } ;
struct aout_final_link_info {scalar_t__ treloff; scalar_t__ dreloff; int /*<<< orphan*/  output_bfd; TYPE_7__* info; } ;
struct TYPE_26__ {int type; int size; int /*<<< orphan*/  name; scalar_t__ pc_relative; } ;
typedef  TYPE_5__ reloc_howto_type ;
typedef  scalar_t__ file_ptr ;
typedef  scalar_t__ bfd_vma ;
typedef  scalar_t__ bfd_size_type ;
typedef  int bfd_reloc_status_type ;
typedef  int /*<<< orphan*/  bfd_byte ;
typedef  int /*<<< orphan*/  bfd_boolean ;
struct TYPE_27__ {scalar_t__ rel_filepos; } ;
typedef  TYPE_6__ asection ;
struct TYPE_28__ {TYPE_3__* callbacks; } ;
struct TYPE_24__ {int /*<<< orphan*/  (* reloc_overflow ) (TYPE_7__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ;int /*<<< orphan*/  (* unattached_reloc ) (TYPE_7__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ;} ;
struct TYPE_21__ {int target_index; int /*<<< orphan*/  owner; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int,scalar_t__,TYPE_5__*,struct reloc_ext_external*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int,scalar_t__,TYPE_5__*,struct reloc_std_external*) ; 
 int FUNC3 (TYPE_5__*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int N_ABS ; 
 int N_EXT ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int RELOC_EXT_BITS_EXTERN_BIG ; 
 int RELOC_EXT_BITS_EXTERN_LITTLE ; 
 int RELOC_EXT_BITS_TYPE_SH_BIG ; 
 int RELOC_EXT_BITS_TYPE_SH_LITTLE ; 
 int RELOC_STD_BITS_BASEREL_BIG ; 
 int RELOC_STD_BITS_BASEREL_LITTLE ; 
 int RELOC_STD_BITS_EXTERN_BIG ; 
 int RELOC_STD_BITS_EXTERN_LITTLE ; 
 int RELOC_STD_BITS_JMPTABLE_BIG ; 
 int RELOC_STD_BITS_JMPTABLE_LITTLE ; 
 int RELOC_STD_BITS_LENGTH_SH_BIG ; 
 int RELOC_STD_BITS_LENGTH_SH_LITTLE ; 
 int RELOC_STD_BITS_PCREL_BIG ; 
 int RELOC_STD_BITS_PCREL_LITTLE ; 
 int RELOC_STD_BITS_RELATIVE_BIG ; 
 int RELOC_STD_BITS_RELATIVE_LITTLE ; 
 scalar_t__ RELOC_STD_SIZE ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct aout_link_hash_entry*,void*) ; 
 scalar_t__ FUNC7 (void*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bfd_error_bad_value ; 
 scalar_t__ FUNC8 (TYPE_5__*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (TYPE_13__*) ; 
#define  bfd_reloc_ok 130 
#define  bfd_reloc_outofrange 129 
#define  bfd_reloc_overflow 128 
 TYPE_5__* FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,TYPE_13__*) ; 
 scalar_t__ bfd_section_reloc_link_order ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,TYPE_6__*,void*,scalar_t__,scalar_t__) ; 
 scalar_t__ bfd_symbol_reloc_link_order ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,TYPE_7__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC17 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 TYPE_6__* FUNC19 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ) ; 
 TYPE_6__* FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_7__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_7__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static bfd_boolean
FUNC25 (struct aout_final_link_info *finfo,
			    asection *o,
			    struct bfd_link_order *p)
{
  struct bfd_link_order_reloc *pr;
  int r_index;
  int r_extern;
  reloc_howto_type *howto;
  file_ptr *reloff_ptr = NULL;
  struct reloc_std_external srel;
  struct reloc_ext_external erel;
  void * rel_ptr;
  bfd_size_type amt;

  pr = p->u.reloc.p;

  if (p->type == bfd_section_reloc_link_order)
    {
      r_extern = 0;
      if (FUNC10 (pr->u.section))
	r_index = N_ABS | N_EXT;
      else
	{
	  FUNC0 (pr->u.section->owner == finfo->output_bfd);
	  r_index = pr->u.section->target_index;
	}
    }
  else
    {
      struct aout_link_hash_entry *h;

      FUNC0 (p->type == bfd_symbol_reloc_link_order);
      r_extern = 1;
      h = ((struct aout_link_hash_entry *)
	   FUNC16 (finfo->output_bfd, finfo->info,
					 pr->u.name, FALSE, FALSE, TRUE));
      if (h != NULL
	  && h->indx >= 0)
	r_index = h->indx;
      else if (h != NULL)
	{
	  /* We decided to strip this symbol, but it turns out that we
	     can't.  Note that we lose the other and desc information
	     here.  I don't think that will ever matter for a global
	     symbol.  */
	  h->indx = -2;
	  h->written = FALSE;
	  if (! FUNC6 (h, (void *) finfo))
	    return FALSE;
	  r_index = h->indx;
	}
      else
	{
	  if (! ((*finfo->info->callbacks->unattached_reloc)
		 (finfo->info, pr->u.name, NULL, NULL, (bfd_vma) 0)))
	    return FALSE;
	  r_index = 0;
	}
    }

  howto = FUNC11 (finfo->output_bfd, pr->reloc);
  if (howto == 0)
    {
      FUNC14 (bfd_error_bad_value);
      return FALSE;
    }

  if (o == FUNC22 (finfo->output_bfd))
    reloff_ptr = &finfo->treloff;
  else if (o == FUNC19 (finfo->output_bfd))
    reloff_ptr = &finfo->dreloff;
  else
    FUNC5 ();

  if (FUNC20 (finfo->output_bfd) == RELOC_STD_SIZE)
    {
#ifdef MY_put_reloc
      MY_put_reloc (finfo->output_bfd, r_extern, r_index, p->offset, howto,
		    &srel);
#else
      {
	int r_pcrel;
	int r_baserel;
	int r_jmptable;
	int r_relative;
	int r_length;

	r_pcrel = (int) howto->pc_relative;
	r_baserel = (howto->type & 8) != 0;
	r_jmptable = (howto->type & 16) != 0;
	r_relative = (howto->type & 32) != 0;
	r_length = howto->size;

	FUNC4 (finfo->output_bfd, p->offset, srel.r_address);
	if (FUNC9 (finfo->output_bfd))
	  {
	    srel.r_index[0] = r_index >> 16;
	    srel.r_index[1] = r_index >> 8;
	    srel.r_index[2] = r_index;
	    srel.r_type[0] =
	      ((r_extern ?     RELOC_STD_BITS_EXTERN_BIG : 0)
	       | (r_pcrel ?    RELOC_STD_BITS_PCREL_BIG : 0)
	       | (r_baserel ?  RELOC_STD_BITS_BASEREL_BIG : 0)
	       | (r_jmptable ? RELOC_STD_BITS_JMPTABLE_BIG : 0)
	       | (r_relative ? RELOC_STD_BITS_RELATIVE_BIG : 0)
	       | (r_length <<  RELOC_STD_BITS_LENGTH_SH_BIG));
	  }
	else
	  {
	    srel.r_index[2] = r_index >> 16;
	    srel.r_index[1] = r_index >> 8;
	    srel.r_index[0] = r_index;
	    srel.r_type[0] =
	      ((r_extern ?     RELOC_STD_BITS_EXTERN_LITTLE : 0)
	       | (r_pcrel ?    RELOC_STD_BITS_PCREL_LITTLE : 0)
	       | (r_baserel ?  RELOC_STD_BITS_BASEREL_LITTLE : 0)
	       | (r_jmptable ? RELOC_STD_BITS_JMPTABLE_LITTLE : 0)
	       | (r_relative ? RELOC_STD_BITS_RELATIVE_LITTLE : 0)
	       | (r_length <<  RELOC_STD_BITS_LENGTH_SH_LITTLE));
	  }
      }
#endif
      rel_ptr = (void *) &srel;

      /* We have to write the addend into the object file, since
	 standard a.out relocs are in place.  It would be more
	 reliable if we had the current contents of the file here,
	 rather than assuming zeroes, but we can't read the file since
	 it was opened using bfd_openw.  */
      if (pr->addend != 0)
	{
	  bfd_size_type size;
	  bfd_reloc_status_type r;
	  bfd_byte *buf;
	  bfd_boolean ok;

	  size = FUNC8 (howto);
	  buf = FUNC17 (size);
	  if (buf == NULL)
	    return FALSE;
	  r = FUNC3 (howto, finfo->output_bfd,
				    (bfd_vma) pr->addend, buf);
	  switch (r)
	    {
	    case bfd_reloc_ok:
	      break;
	    default:
	    case bfd_reloc_outofrange:
	      FUNC5 ();
	    case bfd_reloc_overflow:
	      if (! ((*finfo->info->callbacks->reloc_overflow)
		     (finfo->info, NULL,
		      (p->type == bfd_section_reloc_link_order
		       ? FUNC12 (finfo->output_bfd,
					   pr->u.section)
		       : pr->u.name),
		      howto->name, pr->addend, NULL, NULL, (bfd_vma) 0)))
		{
		  FUNC18 (buf);
		  return FALSE;
		}
	      break;
	    }
	  ok = FUNC15 (finfo->output_bfd, o, (void *) buf,
					 (file_ptr) p->offset, size);
	  FUNC18 (buf);
	  if (! ok)
	    return FALSE;
	}
    }
  else
    {
#ifdef MY_put_ext_reloc
      MY_put_ext_reloc (finfo->output_bfd, r_extern, r_index, p->offset,
			howto, &erel, pr->addend);
#else
      FUNC4 (finfo->output_bfd, p->offset, erel.r_address);

      if (FUNC9 (finfo->output_bfd))
	{
	  erel.r_index[0] = r_index >> 16;
	  erel.r_index[1] = r_index >> 8;
	  erel.r_index[2] = r_index;
	  erel.r_type[0] =
	    ((r_extern ? RELOC_EXT_BITS_EXTERN_BIG : 0)
	     | (howto->type << RELOC_EXT_BITS_TYPE_SH_BIG));
	}
      else
	{
	  erel.r_index[2] = r_index >> 16;
	  erel.r_index[1] = r_index >> 8;
	  erel.r_index[0] = r_index;
	  erel.r_type[0] =
	    (r_extern ? RELOC_EXT_BITS_EXTERN_LITTLE : 0)
	      | (howto->type << RELOC_EXT_BITS_TYPE_SH_LITTLE);
	}

      FUNC4 (finfo->output_bfd, (bfd_vma) pr->addend, erel.r_addend);
#endif /* MY_put_ext_reloc */

      rel_ptr = (void *) &erel;
    }

  amt = FUNC20 (finfo->output_bfd);
  if (FUNC13 (finfo->output_bfd, *reloff_ptr, SEEK_SET) != 0
      || FUNC7 (rel_ptr, amt, finfo->output_bfd) != amt)
    return FALSE;

  *reloff_ptr += FUNC20 (finfo->output_bfd);

  /* Assert that the relocs have not run into the symbols, and that n
     the text relocs have not run into the data relocs.  */
  FUNC0 (*reloff_ptr <= FUNC21 (finfo->output_bfd)
	      && (reloff_ptr != &finfo->treloff
		  || (*reloff_ptr
		      <= FUNC19 (finfo->output_bfd)->rel_filepos)));

  return TRUE;
}
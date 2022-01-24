#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct stab_section_info {scalar_t__* stridxs; struct stab_excl_list* excls; } ;
struct stab_info {int /*<<< orphan*/  strings; } ;
struct stab_excl_list {scalar_t__ offset; scalar_t__ val; scalar_t__ type; struct stab_excl_list* next; } ;
typedef  scalar_t__ file_ptr ;
typedef  scalar_t__ bfd_size_type ;
typedef  scalar_t__ bfd_byte ;
typedef  int /*<<< orphan*/  bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_4__ {scalar_t__ size; scalar_t__ rawsize; scalar_t__ output_offset; TYPE_2__* output_section; } ;
typedef  TYPE_1__ asection ;
struct TYPE_5__ {int size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int DESCOFF ; 
 int STABSIZE ; 
 int STRDXOFF ; 
 size_t TYPEOFF ; 
 int VALOFF ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_2__*,scalar_t__*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,scalar_t__*,int) ; 

bfd_boolean
FUNC6 (bfd *output_bfd,
			  struct stab_info *sinfo,
			  asection *stabsec,
			  void * *psecinfo,
			  bfd_byte *contents)
{
  struct stab_section_info *secinfo;
  struct stab_excl_list *e;
  bfd_byte *sym, *tosym, *symend;
  bfd_size_type *pstridx;

  secinfo = (struct stab_section_info *) *psecinfo;

  if (secinfo == NULL)
    return FUNC4 (output_bfd, stabsec->output_section,
				     contents, stabsec->output_offset,
				     stabsec->size);

  /* Handle each N_BINCL entry.  */
  for (e = secinfo->excls; e != NULL; e = e->next)
    {
      bfd_byte *excl_sym;

      FUNC0 (e->offset < stabsec->rawsize);
      excl_sym = contents + e->offset;
      FUNC3 (output_bfd, e->val, excl_sym + VALOFF);
      excl_sym[TYPEOFF] = e->type;
    }

  /* Copy over all the stabs symbols, omitting the ones we don't want,
     and correcting the string indices for those we do want.  */
  tosym = contents;
  symend = contents + stabsec->rawsize;
  for (sym = contents, pstridx = secinfo->stridxs;
       sym < symend;
       sym += STABSIZE, ++pstridx)
    {
      if (*pstridx != (bfd_size_type) -1)
	{
	  if (tosym != sym)
	    FUNC5 (tosym, sym, STABSIZE);
	  FUNC3 (output_bfd, *pstridx, tosym + STRDXOFF);

	  if (sym[TYPEOFF] == 0)
	    {
	      /* This is the header symbol for the stabs section.  We
		 don't really need one, since we have merged all the
		 input stabs sections into one, but we generate one
		 for the benefit of readers which expect to see one.  */
	      FUNC0 (sym == contents);
	      FUNC3 (output_bfd, FUNC1 (sinfo->strings),
			  tosym + VALOFF);
	      FUNC2 (output_bfd,
			  stabsec->output_section->size / STABSIZE - 1,
			  tosym + DESCOFF);
	    }

	  tosym += STABSIZE;
	}
    }

  FUNC0 ((bfd_size_type) (tosym - contents) == stabsec->size);

  return FUNC4 (output_bfd, stabsec->output_section,
				   contents, (file_ptr) stabsec->output_offset,
				   stabsec->size);
}
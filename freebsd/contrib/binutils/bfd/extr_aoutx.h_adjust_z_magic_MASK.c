#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_7__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_12__ ;

/* Type definitions */
struct internal_exec {void* a_text; scalar_t__ a_data; scalar_t__ a_bss; } ;
struct aout_backend_data {int default_text_vma; int /*<<< orphan*/  exec_header_not_counted; scalar_t__ zmagic_mapped_contiguous; scalar_t__ text_includes_header; } ;
typedef  void* file_ptr ;
typedef  void* bfd_vma ;
typedef  scalar_t__ bfd_size_type ;
typedef  int bfd_boolean ;
struct TYPE_15__ {int flags; } ;
typedef  TYPE_1__ bfd ;
struct TYPE_16__ {int filepos; int vma; int size; int /*<<< orphan*/  user_set_vma; } ;
typedef  TYPE_2__ asection ;
struct TYPE_17__ {scalar_t__ vma; scalar_t__ size; int /*<<< orphan*/  alignment_power; int /*<<< orphan*/  user_set_vma; } ;
struct TYPE_14__ {int exec_bytes_size; int zmagic_disk_block_size; int page_size; int segment_size; } ;

/* Variables and functions */
 void* FUNC0 (void*,int) ; 
 int HAS_RELOC ; 
 int /*<<< orphan*/  FUNC1 (struct internal_exec,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  QMAGIC ; 
 int /*<<< orphan*/  ZMAGIC ; 
 TYPE_12__ FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (void*,int /*<<< orphan*/ ) ; 
 struct aout_backend_data* FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 TYPE_7__* FUNC6 (TYPE_1__*) ; 
 TYPE_2__* FUNC7 (TYPE_1__*) ; 
 TYPE_2__* FUNC8 (TYPE_1__*) ; 
 scalar_t__ q_magic_format ; 

__attribute__((used)) static void
FUNC9 (bfd *abfd, struct internal_exec *execp)
{
  bfd_size_type data_pad, text_pad;
  file_ptr text_end;
  const struct aout_backend_data *abdp;
  /* TRUE if text includes exec header.  */
  bfd_boolean ztih;

  abdp = FUNC4 (abfd);

  /* Text.  */
  ztih = (abdp != NULL
	  && (abdp->text_includes_header
	      || FUNC5 (abfd) == q_magic_format));
  FUNC8 (abfd)->filepos = (ztih
				 ? FUNC2 (abfd).exec_bytes_size
				 : FUNC2 (abfd).zmagic_disk_block_size);
  if (! FUNC8 (abfd)->user_set_vma)
    {
      /* ?? Do we really need to check for relocs here?  */
      FUNC8 (abfd)->vma = ((abfd->flags & HAS_RELOC)
				 ? 0
				 : (ztih
				    ? (abdp->default_text_vma
				       + FUNC2 (abfd).exec_bytes_size)
				    : abdp->default_text_vma));
      text_pad = 0;
    }
  else
    {
      /* The .text section is being loaded at an unusual address.  We
         may need to pad it such that the .data section starts at a page
         boundary.  */
      if (ztih)
	text_pad = ((FUNC8 (abfd)->filepos - FUNC8 (abfd)->vma)
		    & (FUNC2 (abfd).page_size - 1));
      else
	text_pad = ((- FUNC8 (abfd)->vma)
		    & (FUNC2 (abfd).page_size - 1));
    }

  /* Find start of data.  */
  if (ztih)
    {
      text_end = FUNC8 (abfd)->filepos + FUNC8 (abfd)->size;
      text_pad += FUNC0 (text_end, FUNC2 (abfd).page_size) - text_end;
    }
  else
    {
      /* Note that if page_size == zmagic_disk_block_size, then
	 filepos == page_size, and this case is the same as the ztih
	 case.  */
      text_end = FUNC8 (abfd)->size;
      text_pad += FUNC0 (text_end, FUNC2 (abfd).page_size) - text_end;
      text_end += FUNC8 (abfd)->filepos;
    }
  FUNC8 (abfd)->size += text_pad;
  text_end += text_pad;

  /* Data.  */
  if (!FUNC7 (abfd)->user_set_vma)
    {
      bfd_vma vma;
      vma = FUNC8 (abfd)->vma + FUNC8 (abfd)->size;
      FUNC7 (abfd)->vma = FUNC0 (vma, FUNC2 (abfd).segment_size);
    }
  if (abdp && abdp->zmagic_mapped_contiguous)
    {
      asection * text = FUNC8 (abfd);
      asection * data = FUNC7 (abfd);

      text_pad = data->vma - (text->vma + text->size);
      /* Only pad the text section if the data
	 section is going to be placed after it.  */
      if (text_pad > 0)
	text->size += text_pad;
    }
  FUNC7 (abfd)->filepos = (FUNC8 (abfd)->filepos
				 + FUNC8 (abfd)->size);

  /* Fix up exec header while we're at it.  */
  execp->a_text = FUNC8 (abfd)->size;
  if (ztih && (!abdp || (abdp && !abdp->exec_header_not_counted)))
    execp->a_text += FUNC2 (abfd).exec_bytes_size;
  if (FUNC5 (abfd) == q_magic_format)
    FUNC1 (*execp, QMAGIC);
  else
    FUNC1 (*execp, ZMAGIC);

  /* Spec says data section should be rounded up to page boundary.  */
  FUNC7 (abfd)->size
    = FUNC3 (FUNC7 (abfd)->size,
		   FUNC6 (abfd)->alignment_power);
  execp->a_data = FUNC0 (FUNC7 (abfd)->size,
			     FUNC2 (abfd).page_size);
  data_pad = execp->a_data - FUNC7 (abfd)->size;

  /* BSS.  */
  if (!FUNC6 (abfd)->user_set_vma)
    FUNC6 (abfd)->vma = (FUNC7 (abfd)->vma
			      + FUNC7 (abfd)->size);
  /* If the BSS immediately follows the data section and extra space
     in the page is left after the data section, fudge data
     in the header so that the bss section looks smaller by that
     amount.  We'll start the bss section there, and lie to the OS.
     (Note that a linker script, as well as the above assignment,
     could have explicitly set the BSS vma to immediately follow
     the data section.)  */
  if (FUNC3 (FUNC6 (abfd)->vma, FUNC6 (abfd)->alignment_power)
      == FUNC7 (abfd)->vma + FUNC7 (abfd)->size)
    execp->a_bss = (data_pad > FUNC6 (abfd)->size
		    ? 0 : FUNC6 (abfd)->size - data_pad);
  else
    execp->a_bss = FUNC6 (abfd)->size;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct internal_reloc {int dummy; } ;
struct coff_section_tdata {int dummy; } ;
typedef  int bfd_size_type ;
typedef  struct internal_reloc bfd_byte ;
typedef  scalar_t__ bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_5__ {int reloc_count; int /*<<< orphan*/ * used_by_bfd; int /*<<< orphan*/  rel_filepos; } ;
typedef  TYPE_1__ asection ;
struct TYPE_6__ {struct internal_reloc* relocs; int /*<<< orphan*/ * contents; } ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_SET ; 
 int FUNC0 (struct internal_reloc*,int,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,void*,void*) ; 
 struct internal_reloc* FUNC3 (int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int) ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (struct internal_reloc*) ; 
 int /*<<< orphan*/  FUNC8 (struct internal_reloc*,struct internal_reloc*,int) ; 

struct internal_reloc *
FUNC9 (bfd *abfd,
				asection *sec,
				bfd_boolean cache,
				bfd_byte *external_relocs,
				bfd_boolean require_internal,
				struct internal_reloc *internal_relocs)
{
  bfd_size_type relsz;
  bfd_byte *free_external = NULL;
  struct internal_reloc *free_internal = NULL;
  bfd_byte *erel;
  bfd_byte *erel_end;
  struct internal_reloc *irel;
  bfd_size_type amt;

  if (FUNC6 (abfd, sec) != NULL
      && FUNC6 (abfd, sec)->relocs != NULL)
    {
      if (! require_internal)
	return FUNC6 (abfd, sec)->relocs;
      FUNC8 (internal_relocs, FUNC6 (abfd, sec)->relocs,
	      sec->reloc_count * sizeof (struct internal_reloc));
      return internal_relocs;
    }

  relsz = FUNC1 (abfd);

  amt = sec->reloc_count * relsz;
  if (external_relocs == NULL)
    {
      free_external = FUNC3 (amt);
      if (free_external == NULL && sec->reloc_count > 0)
	goto error_return;
      external_relocs = free_external;
    }

  if (FUNC4 (abfd, sec->rel_filepos, SEEK_SET) != 0
      || FUNC0 (external_relocs, amt, abfd) != amt)
    goto error_return;

  if (internal_relocs == NULL)
    {
      amt = sec->reloc_count;
      amt *= sizeof (struct internal_reloc);
      free_internal = FUNC3 (amt);
      if (free_internal == NULL && sec->reloc_count > 0)
	goto error_return;
      internal_relocs = free_internal;
    }

  /* Swap in the relocs.  */
  erel = external_relocs;
  erel_end = erel + relsz * sec->reloc_count;
  irel = internal_relocs;
  for (; erel < erel_end; erel += relsz, irel++)
    FUNC2 (abfd, (void *) erel, (void *) irel);

  if (free_external != NULL)
    {
      FUNC7 (free_external);
      free_external = NULL;
    }

  if (cache && free_internal != NULL)
    {
      if (FUNC6 (abfd, sec) == NULL)
	{
	  amt = sizeof (struct coff_section_tdata);
	  sec->used_by_bfd = FUNC5 (abfd, amt);
	  if (sec->used_by_bfd == NULL)
	    goto error_return;
	  FUNC6 (abfd, sec)->contents = NULL;
	}
      FUNC6 (abfd, sec)->relocs = free_internal;
    }

  return internal_relocs;

 error_return:
  if (free_external != NULL)
    FUNC7 (free_external);
  if (free_internal != NULL)
    FUNC7 (free_internal);
  return NULL;
}
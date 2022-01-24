#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_8__ ;
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  windres_bfd ;
struct TYPE_16__ {unsigned long length; TYPE_4__* d; int /*<<< orphan*/ * last; } ;
struct TYPE_15__ {unsigned long length; TYPE_5__* d; int /*<<< orphan*/ * last; } ;
struct TYPE_20__ {int length; TYPE_5__* d; int /*<<< orphan*/ * last; } ;
struct TYPE_14__ {unsigned long length; TYPE_5__* d; int /*<<< orphan*/ * last; } ;
struct coff_write_info {unsigned long dirsize; int dirstrsize; unsigned long dataentsize; int /*<<< orphan*/ * relocs; int /*<<< orphan*/ * wrbfd; TYPE_3__ resources; TYPE_2__ dataents; TYPE_8__ dirstrs; TYPE_1__ dirs; scalar_t__ reloc_count; int /*<<< orphan*/  sympp; } ;
typedef  int /*<<< orphan*/  rc_uint_type ;
typedef  int /*<<< orphan*/  rc_res_directory ;
struct TYPE_17__ {scalar_t__ length; int /*<<< orphan*/  res; struct TYPE_17__* next; } ;
typedef  TYPE_4__ coff_res_data ;
struct TYPE_18__ {scalar_t__ length; int /*<<< orphan*/  data; struct TYPE_18__* next; } ;
typedef  TYPE_5__ bindata ;
typedef  scalar_t__ bfd_byte ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_19__ {int /*<<< orphan*/  symbol_ptr_ptr; struct TYPE_19__* output_section; } ;
typedef  TYPE_6__ asection ;

/* Variables and functions */
 int HAS_RELOC ; 
 int HAS_SYMS ; 
 int SEC_ALLOC ; 
 int SEC_DATA ; 
 int SEC_HAS_CONTENTS ; 
 int SEC_LOAD ; 
 int /*<<< orphan*/  WR_KIND_BFD ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  bfd_arch_arm ; 
 int /*<<< orphan*/  bfd_arch_i386 ; 
 int /*<<< orphan*/  bfd_arch_mips ; 
 int /*<<< orphan*/  bfd_arch_sh ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 TYPE_6__* FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  bfd_object ; 
 int /*<<< orphan*/ * FUNC5 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,TYPE_6__*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,TYPE_6__*,int /*<<< orphan*/ ,unsigned long,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,TYPE_6__*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,TYPE_6__*,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__* FUNC14 (TYPE_8__*,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/  const*,struct coff_write_info*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/  const*,struct coff_write_info*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long,scalar_t__) ; 

void
FUNC22 (const char *filename, const char *target,
		 const rc_res_directory *resources)
{
  bfd *abfd;
  asection *sec;
  struct coff_write_info cwi;
  windres_bfd wrbfd;
  bindata *d;
  coff_res_data *rd;
  unsigned long length, offset;

  if (filename == NULL)
    FUNC17 (FUNC0("filename required for COFF output"));

  abfd = FUNC5 (filename, target);
  if (abfd == NULL)
    FUNC3 (filename);

  if (! FUNC8 (abfd, bfd_object))
    FUNC3 ("bfd_set_format");

#if defined DLLTOOL_SH
  if (! bfd_set_arch_mach (abfd, bfd_arch_sh, 0))
    bfd_fatal ("bfd_set_arch_mach(sh)");
#elif defined DLLTOOL_MIPS
  if (! bfd_set_arch_mach (abfd, bfd_arch_mips, 0))
    bfd_fatal ("bfd_set_arch_mach(mips)");
#elif defined DLLTOOL_ARM
  if (! bfd_set_arch_mach (abfd, bfd_arch_arm, 0))
    bfd_fatal ("bfd_set_arch_mach(arm)");
#else
  /* FIXME: This is obviously i386 specific.  */
  if (! FUNC6 (abfd, bfd_arch_i386, 0))
    FUNC3 ("bfd_set_arch_mach(i386)");
#endif

  if (! FUNC7 (abfd, HAS_SYMS | HAS_RELOC))
    FUNC3 ("bfd_set_file_flags");

  sec = FUNC4 (abfd, ".rsrc");
  if (sec == NULL)
    FUNC3 ("bfd_make_section");

  if (! FUNC11 (abfd, sec,
			       (SEC_HAS_CONTENTS | SEC_ALLOC
				| SEC_LOAD | SEC_DATA)))
    FUNC3 ("bfd_set_section_flags");

  if (! FUNC13 (abfd, sec->symbol_ptr_ptr, 1))
    FUNC3 ("bfd_set_symtab");

  /* Requiring this is probably a bug in BFD.  */
  sec->output_section = sec;

  /* The order of data in the .rsrc section is
       resource directory tables and entries
       resource directory strings
       resource data entries
       actual resource data

     We build these different types of data in different lists.  */

  FUNC20 (&wrbfd, abfd, sec, WR_KIND_BFD);

  cwi.wrbfd = &wrbfd;
  cwi.sympp = sec->symbol_ptr_ptr;
  cwi.dirsize = 0;
  cwi.dirstrsize = 0;
  cwi.dataentsize = 0;
  cwi.dirs.d = NULL;
  cwi.dirs.last = NULL;
  cwi.dirs.length = 0;
  cwi.dirstrs.d = NULL;
  cwi.dirstrs.last = NULL;
  cwi.dirstrs.length = 0;
  cwi.dataents.d = NULL;
  cwi.dataents.last = NULL;
  cwi.dataents.length = 0;
  cwi.resources.d = NULL;
  cwi.resources.last = NULL;
  cwi.resources.length = 0;
  cwi.relocs = NULL;
  cwi.reloc_count = 0;

  /* Work out the sizes of the resource directory entries, so that we
     know the various offsets we will need.  */
  FUNC15 (resources, &cwi);

  /* Force the directory strings to be 32 bit aligned.  Every other
     structure is 32 bit aligned anyhow.  */
  cwi.dirstrsize = (cwi.dirstrsize + 3) &~ 3;

  /* Actually convert the resources to binary.  */
  FUNC16 (resources, &cwi);

  /* Add another 2 bytes to the directory strings if needed for
     alignment.  */
  if ((cwi.dirstrs.length & 3) != 0)
    {
      bfd_byte *ex;

      ex = FUNC14 (&cwi.dirstrs, 2);
      ex[0] = 0;
      ex[1] = 0;
    }

  /* Make sure that the data we built came out to the same size as we
     calculated initially.  */
  FUNC1 (cwi.dirs.length == cwi.dirsize);
  FUNC1 (cwi.dirstrs.length == cwi.dirstrsize);
  FUNC1 (cwi.dataents.length == cwi.dataentsize);

  length = (cwi.dirsize
	    + cwi.dirstrsize
	    + cwi.dataentsize
	    + cwi.resources.length);

  if (! FUNC12 (abfd, sec, length))
    FUNC3 ("bfd_set_section_size");

  FUNC9 (abfd, sec, cwi.relocs, cwi.reloc_count);

  offset = 0;
  for (d = cwi.dirs.d; d != NULL; d = d->next)
    {
      if (! FUNC10 (abfd, sec, d->data, offset, d->length))
	FUNC3 ("bfd_set_section_contents");
      offset += d->length;
    }
  for (d = cwi.dirstrs.d; d != NULL; d = d->next)
    {
      FUNC21 (&wrbfd, d->data, offset, d->length);
      offset += d->length;
    }
  for (d = cwi.dataents.d; d != NULL; d = d->next)
    {
      FUNC21 (&wrbfd, d->data, offset, d->length);
      offset += d->length;
    }
  for (rd = cwi.resources.d; rd != NULL; rd = rd->next)
    {
      FUNC19 (cwi.wrbfd, (rc_uint_type) offset, rd->res);
      offset += rd->length;
    }

  FUNC1 (offset == length);

  if (! FUNC2 (abfd))
    FUNC3 ("bfd_close");

  /* We allocated the relocs array using malloc.  */
  FUNC18 (cwi.relocs);
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  bfd_byte ;
typedef  int /*<<< orphan*/  bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_7__ {int /*<<< orphan*/ * tdata; } ;
struct TYPE_10__ {TYPE_1__ u; } ;
struct TYPE_9__ {int size; scalar_t__ kind; } ;
struct TYPE_8__ {scalar_t__ sh_type; int sh_size; int sh_flags; unsigned int sh_addralign; scalar_t__ sh_entsize; int /*<<< orphan*/ * bfd_section; scalar_t__ sh_offset; int /*<<< orphan*/ * contents; } ;
typedef  TYPE_2__ Elf_Internal_Shdr ;
typedef  TYPE_3__ Elf_Internal_Options ;
typedef  int /*<<< orphan*/  Elf_External_Options ;
typedef  int /*<<< orphan*/  Elf64_External_RegInfo ;
typedef  int /*<<< orphan*/  Elf32_External_RegInfo ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ ODK_REGINFO ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int SHF_ALLOC ; 
 int SHF_MIPS_GPREL ; 
 int SHF_WRITE ; 
 scalar_t__ SHT_MIPS_OPTIONS ; 
 scalar_t__ SHT_MIPS_REGINFO ; 
 scalar_t__ SHT_NOBITS ; 
 void* SHT_PROGBITS ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 char* FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_3__*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

bfd_boolean
FUNC15 (bfd *abfd, Elf_Internal_Shdr *hdr)
{
  if (hdr->sh_type == SHT_MIPS_REGINFO
      && hdr->sh_size > 0)
    {
      bfd_byte buf[4];

      FUNC1 (hdr->sh_size == sizeof (Elf32_External_RegInfo));
      FUNC1 (hdr->contents == NULL);

      if (FUNC10 (abfd,
		    hdr->sh_offset + sizeof (Elf32_External_RegInfo) - 4,
		    SEEK_SET) != 0)
	return FALSE;
      FUNC2 (abfd, FUNC11 (abfd), buf);
      if (FUNC7 (buf, 4, abfd) != 4)
	return FALSE;
    }

  if (hdr->sh_type == SHT_MIPS_OPTIONS
      && hdr->bfd_section != NULL
      && FUNC12 (hdr->bfd_section) != NULL
      && FUNC12 (hdr->bfd_section)->u.tdata != NULL)
    {
      bfd_byte *contents, *l, *lend;

      /* We stored the section contents in the tdata field in the
	 set_section_contents routine.  We save the section contents
	 so that we don't have to read them again.
	 At this point we know that elf_gp is set, so we can look
	 through the section contents to see if there is an
	 ODK_REGINFO structure.  */

      contents = FUNC12 (hdr->bfd_section)->u.tdata;
      l = contents;
      lend = contents + hdr->sh_size;
      while (l + sizeof (Elf_External_Options) <= lend)
	{
	  Elf_Internal_Options intopt;

	  FUNC9 (abfd, (Elf_External_Options *) l,
					&intopt);
	  if (intopt.size < sizeof (Elf_External_Options))
	    {
	      FUNC6)
		(FUNC5("%B: Warning: bad `%s' option size %u smaller than its header"),
		abfd, FUNC4 (abfd), intopt.size);
	      break;
	    }
	  if (FUNC0 (abfd) && intopt.kind == ODK_REGINFO)
	    {
	      bfd_byte buf[8];

	      if (FUNC10 (abfd,
			    (hdr->sh_offset
			     + (l - contents)
			     + sizeof (Elf_External_Options)
			     + (sizeof (Elf64_External_RegInfo) - 8)),
			     SEEK_SET) != 0)
		return FALSE;
	      FUNC3 (abfd, FUNC11 (abfd), buf);
	      if (FUNC7 (buf, 8, abfd) != 8)
		return FALSE;
	    }
	  else if (intopt.kind == ODK_REGINFO)
	    {
	      bfd_byte buf[4];

	      if (FUNC10 (abfd,
			    (hdr->sh_offset
			     + (l - contents)
			     + sizeof (Elf_External_Options)
			     + (sizeof (Elf32_External_RegInfo) - 4)),
			    SEEK_SET) != 0)
		return FALSE;
	      FUNC2 (abfd, FUNC11 (abfd), buf);
	      if (FUNC7 (buf, 4, abfd) != 4)
		return FALSE;
	    }
	  l += intopt.size;
	}
    }

  if (hdr->bfd_section != NULL)
    {
      const char *name = FUNC8 (abfd, hdr->bfd_section);

      if (FUNC13 (name, ".sdata") == 0
	  || FUNC13 (name, ".lit8") == 0
	  || FUNC13 (name, ".lit4") == 0)
	{
	  hdr->sh_flags |= SHF_ALLOC | SHF_WRITE | SHF_MIPS_GPREL;
	  hdr->sh_type = SHT_PROGBITS;
	}
      else if (FUNC13 (name, ".sbss") == 0)
	{
	  hdr->sh_flags |= SHF_ALLOC | SHF_WRITE | SHF_MIPS_GPREL;
	  hdr->sh_type = SHT_NOBITS;
	}
      else if (FUNC13 (name, ".srdata") == 0)
	{
	  hdr->sh_flags |= SHF_ALLOC | SHF_MIPS_GPREL;
	  hdr->sh_type = SHT_PROGBITS;
	}
      else if (FUNC13 (name, ".compact_rel") == 0)
	{
	  hdr->sh_flags = 0;
	  hdr->sh_type = SHT_PROGBITS;
	}
      else if (FUNC13 (name, ".rtproc") == 0)
	{
	  if (hdr->sh_addralign != 0 && hdr->sh_entsize == 0)
	    {
	      unsigned int adjust;

	      adjust = hdr->sh_size % hdr->sh_addralign;
	      if (adjust != 0)
		hdr->sh_size += hdr->sh_addralign - adjust;
	    }
	}
    }

  return TRUE;
}
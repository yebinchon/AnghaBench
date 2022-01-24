#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  bfd_boolean ;
struct TYPE_10__ {int flags; } ;
typedef  TYPE_1__ bfd ;
struct TYPE_11__ {int size; } ;
typedef  TYPE_2__ asection ;
struct TYPE_12__ {int sh_info; int sh_entsize; int /*<<< orphan*/  sh_flags; int /*<<< orphan*/  sh_type; } ;
typedef  TYPE_3__ Elf_Internal_Shdr ;
typedef  int /*<<< orphan*/  Elf32_Lib ;
typedef  int /*<<< orphan*/  Elf32_External_gptab ;
typedef  int /*<<< orphan*/  Elf32_External_RegInfo ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*,char*) ; 
 int DYNAMIC ; 
 scalar_t__ FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  SHF_ALLOC ; 
 int /*<<< orphan*/  SHF_MIPS_GPREL ; 
 int /*<<< orphan*/  SHF_MIPS_NOSTRIP ; 
 int /*<<< orphan*/  SHT_MIPS_CONFLICT ; 
 int /*<<< orphan*/  SHT_MIPS_CONTENT ; 
 int /*<<< orphan*/  SHT_MIPS_DEBUG ; 
 int /*<<< orphan*/  SHT_MIPS_DWARF ; 
 int /*<<< orphan*/  SHT_MIPS_EVENTS ; 
 int /*<<< orphan*/  SHT_MIPS_GPTAB ; 
 int /*<<< orphan*/  SHT_MIPS_IFACE ; 
 int /*<<< orphan*/  SHT_MIPS_LIBLIST ; 
 int /*<<< orphan*/  SHT_MIPS_MSYM ; 
 int /*<<< orphan*/  SHT_MIPS_OPTIONS ; 
 int /*<<< orphan*/  SHT_MIPS_REGINFO ; 
 int /*<<< orphan*/  SHT_MIPS_SYMBOL_LIB ; 
 int /*<<< orphan*/  SHT_MIPS_UCODE ; 
 int SIZEOF_MIPS_DYNSYM_SECNAMES ; 
 int /*<<< orphan*/  TRUE ; 
 char* FUNC3 (TYPE_1__*,TYPE_2__*) ; 
 scalar_t__ FUNC4 (char const*,char*) ; 

bfd_boolean
FUNC5 (bfd *abfd, Elf_Internal_Shdr *hdr, asection *sec)
{
  const char *name = FUNC3 (abfd, sec);

  if (FUNC4 (name, ".liblist") == 0)
    {
      hdr->sh_type = SHT_MIPS_LIBLIST;
      hdr->sh_info = sec->size / sizeof (Elf32_Lib);
      /* The sh_link field is set in final_write_processing.  */
    }
  else if (FUNC4 (name, ".conflict") == 0)
    hdr->sh_type = SHT_MIPS_CONFLICT;
  else if (FUNC0 (name, ".gptab."))
    {
      hdr->sh_type = SHT_MIPS_GPTAB;
      hdr->sh_entsize = sizeof (Elf32_External_gptab);
      /* The sh_info field is set in final_write_processing.  */
    }
  else if (FUNC4 (name, ".ucode") == 0)
    hdr->sh_type = SHT_MIPS_UCODE;
  else if (FUNC4 (name, ".mdebug") == 0)
    {
      hdr->sh_type = SHT_MIPS_DEBUG;
      /* In a shared object on IRIX 5.3, the .mdebug section has an
         entsize of 0.  FIXME: Does this matter?  */
      if (FUNC2 (abfd) && (abfd->flags & DYNAMIC) != 0)
	hdr->sh_entsize = 0;
      else
	hdr->sh_entsize = 1;
    }
  else if (FUNC4 (name, ".reginfo") == 0)
    {
      hdr->sh_type = SHT_MIPS_REGINFO;
      /* In a shared object on IRIX 5.3, the .reginfo section has an
         entsize of 0x18.  FIXME: Does this matter?  */
      if (FUNC2 (abfd))
	{
	  if ((abfd->flags & DYNAMIC) != 0)
	    hdr->sh_entsize = sizeof (Elf32_External_RegInfo);
	  else
	    hdr->sh_entsize = 1;
	}
      else
	hdr->sh_entsize = sizeof (Elf32_External_RegInfo);
    }
  else if (FUNC2 (abfd)
	   && (FUNC4 (name, ".hash") == 0
	       || FUNC4 (name, ".dynamic") == 0
	       || FUNC4 (name, ".dynstr") == 0))
    {
      if (FUNC2 (abfd))
	hdr->sh_entsize = 0;
#if 0
      /* This isn't how the IRIX6 linker behaves.  */
      hdr->sh_info = SIZEOF_MIPS_DYNSYM_SECNAMES;
#endif
    }
  else if (FUNC4 (name, ".got") == 0
	   || FUNC4 (name, ".srdata") == 0
	   || FUNC4 (name, ".sdata") == 0
	   || FUNC4 (name, ".sbss") == 0
	   || FUNC4 (name, ".lit4") == 0
	   || FUNC4 (name, ".lit8") == 0)
    hdr->sh_flags |= SHF_MIPS_GPREL;
  else if (FUNC4 (name, ".MIPS.interfaces") == 0)
    {
      hdr->sh_type = SHT_MIPS_IFACE;
      hdr->sh_flags |= SHF_MIPS_NOSTRIP;
    }
  else if (FUNC0 (name, ".MIPS.content"))
    {
      hdr->sh_type = SHT_MIPS_CONTENT;
      hdr->sh_flags |= SHF_MIPS_NOSTRIP;
      /* The sh_info field is set in final_write_processing.  */
    }
  else if (FUNC1 (name))
    {
      hdr->sh_type = SHT_MIPS_OPTIONS;
      hdr->sh_entsize = 1;
      hdr->sh_flags |= SHF_MIPS_NOSTRIP;
    }
  else if (FUNC0 (name, ".debug_"))
    hdr->sh_type = SHT_MIPS_DWARF;
  else if (FUNC4 (name, ".MIPS.symlib") == 0)
    {
      hdr->sh_type = SHT_MIPS_SYMBOL_LIB;
      /* The sh_link and sh_info fields are set in
         final_write_processing.  */
    }
  else if (FUNC0 (name, ".MIPS.events")
	   || FUNC0 (name, ".MIPS.post_rel"))
    {
      hdr->sh_type = SHT_MIPS_EVENTS;
      hdr->sh_flags |= SHF_MIPS_NOSTRIP;
      /* The sh_link field is set in final_write_processing.  */
    }
  else if (FUNC4 (name, ".msym") == 0)
    {
      hdr->sh_type = SHT_MIPS_MSYM;
      hdr->sh_flags |= SHF_ALLOC;
      hdr->sh_entsize = 8;
    }

  /* The generic elf_fake_sections will set up REL_HDR using the default
   kind of relocations.  We used to set up a second header for the
   non-default kind of relocations here, but only NewABI would use
   these, and the IRIX ld doesn't like resulting empty RELA sections.
   Thus we create those header only on demand now.  */

  return TRUE;
}
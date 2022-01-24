#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct elf_backend_data {int dynamic_sec_flags; int /*<<< orphan*/  (* elf_backend_create_dynamic_sections ) (int /*<<< orphan*/ *,struct bfd_link_info*) ;TYPE_1__* s; } ;
struct bfd_link_info {scalar_t__ emit_gnu_hash; scalar_t__ emit_hash; scalar_t__ executable; int /*<<< orphan*/  hash; } ;
typedef  int flagword ;
typedef  scalar_t__ bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;
typedef  int /*<<< orphan*/  asection ;
struct TYPE_8__ {scalar_t__ dynamic_sections_created; int /*<<< orphan*/ * dynobj; } ;
struct TYPE_6__ {int sh_entsize; } ;
struct TYPE_7__ {TYPE_2__ this_hdr; } ;
struct TYPE_5__ {int log_file_align; int sizeof_hash_entry; int arch_size; } ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int SEC_READONLY ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct bfd_link_info*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct bfd_link_info*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 TYPE_4__* FUNC4 (struct bfd_link_info*) ; 
 TYPE_3__* FUNC5 (int /*<<< orphan*/ *) ; 
 struct elf_backend_data* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct bfd_link_info*) ; 

bfd_boolean
FUNC9 (bfd *abfd, struct bfd_link_info *info)
{
  flagword flags;
  register asection *s;
  const struct elf_backend_data *bed;

  if (! FUNC7 (info->hash))
    return FALSE;

  if (FUNC4 (info)->dynamic_sections_created)
    return TRUE;

  if (!FUNC1 (abfd, info))
    return FALSE;

  abfd = FUNC4 (info)->dynobj;
  bed = FUNC6 (abfd);

  flags = bed->dynamic_sec_flags;

  /* A dynamically linked executable has a .interp section, but a
     shared library does not.  */
  if (info->executable)
    {
      s = FUNC2 (abfd, ".interp",
				       flags | SEC_READONLY);
      if (s == NULL)
	return FALSE;
    }

  /* Create sections to hold version informations.  These are removed
     if they are not needed.  */
  s = FUNC2 (abfd, ".gnu.version_d",
				   flags | SEC_READONLY);
  if (s == NULL
      || ! FUNC3 (abfd, s, bed->s->log_file_align))
    return FALSE;

  s = FUNC2 (abfd, ".gnu.version",
				   flags | SEC_READONLY);
  if (s == NULL
      || ! FUNC3 (abfd, s, 1))
    return FALSE;

  s = FUNC2 (abfd, ".gnu.version_r",
				   flags | SEC_READONLY);
  if (s == NULL
      || ! FUNC3 (abfd, s, bed->s->log_file_align))
    return FALSE;

  s = FUNC2 (abfd, ".dynsym",
				   flags | SEC_READONLY);
  if (s == NULL
      || ! FUNC3 (abfd, s, bed->s->log_file_align))
    return FALSE;

  s = FUNC2 (abfd, ".dynstr",
				   flags | SEC_READONLY);
  if (s == NULL)
    return FALSE;

  s = FUNC2 (abfd, ".dynamic", flags);
  if (s == NULL
      || ! FUNC3 (abfd, s, bed->s->log_file_align))
    return FALSE;

  /* The special symbol _DYNAMIC is always set to the start of the
     .dynamic section.  We could set _DYNAMIC in a linker script, but we
     only want to define it if we are, in fact, creating a .dynamic
     section.  We don't want to define it if there is no .dynamic
     section, since on some ELF platforms the start up code examines it
     to decide how to initialize the process.  */
  if (!FUNC0 (abfd, info, s, "_DYNAMIC"))
    return FALSE;

  if (info->emit_hash)
    {
      s = FUNC2 (abfd, ".hash", flags | SEC_READONLY);
      if (s == NULL
	  || ! FUNC3 (abfd, s, bed->s->log_file_align))
	return FALSE;
      FUNC5 (s)->this_hdr.sh_entsize = bed->s->sizeof_hash_entry;
    }

  if (info->emit_gnu_hash)
    {
      s = FUNC2 (abfd, ".gnu.hash",
				       flags | SEC_READONLY);
      if (s == NULL
	  || ! FUNC3 (abfd, s, bed->s->log_file_align))
	return FALSE;
      /* For 64-bit ELF, .gnu.hash is a non-uniform entity size section:
	 4 32-bit words followed by variable count of 64-bit words, then
	 variable count of 32-bit words.  */
      if (bed->s->arch_size == 64)
	FUNC5 (s)->this_hdr.sh_entsize = 0;
      else
	FUNC5 (s)->this_hdr.sh_entsize = 4;
    }

  /* Let the backend create the rest of the sections.  This lets the
     backend set the right flags.  The backend will normally create
     the .got and .plt sections.  */
  if (! (*bed->elf_backend_create_dynamic_sections) (abfd, info))
    return FALSE;

  FUNC4 (info)->dynamic_sections_created = TRUE;

  return TRUE;
}
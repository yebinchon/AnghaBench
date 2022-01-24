#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  flagword ;
typedef  int /*<<< orphan*/  bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;
typedef  int /*<<< orphan*/  asection ;
struct TYPE_4__ {int sh_flags; scalar_t__ sh_type; int /*<<< orphan*/ * bfd_section; } ;
typedef  TYPE_1__ Elf_Internal_Shdr ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  SEC_EXCLUDE ; 
 int /*<<< orphan*/  SEC_SORT_ENTRIES ; 
 int SHF_EXCLUDE ; 
 scalar_t__ SHT_ORDERED ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bfd_boolean
FUNC3 (bfd *abfd,
			   Elf_Internal_Shdr *hdr,
			   const char *name,
			   int shindex)
{
  asection *newsect;
  flagword flags;

  if (! FUNC0 (abfd, hdr, name, shindex))
    return FALSE;

  newsect = hdr->bfd_section;
  flags = FUNC1 (abfd, newsect);
  if (hdr->sh_flags & SHF_EXCLUDE)
    flags |= SEC_EXCLUDE;

  if (hdr->sh_type == SHT_ORDERED)
    flags |= SEC_SORT_ENTRIES;

  FUNC2 (abfd, newsect, flags);
  return TRUE;
}
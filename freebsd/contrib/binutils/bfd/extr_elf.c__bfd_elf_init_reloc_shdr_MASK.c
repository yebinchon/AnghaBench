#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct elf_backend_data {TYPE_1__* s; } ;
typedef  int bfd_size_type ;
typedef  scalar_t__ bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_7__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_2__ asection ;
struct TYPE_8__ {unsigned int sh_name; int sh_addralign; scalar_t__ sh_offset; scalar_t__ sh_size; scalar_t__ sh_addr; scalar_t__ sh_flags; int /*<<< orphan*/  sh_entsize; int /*<<< orphan*/  sh_type; } ;
struct TYPE_6__ {int log_file_align; int /*<<< orphan*/  sizeof_rel; int /*<<< orphan*/  sizeof_rela; } ;
typedef  TYPE_3__ Elf_Internal_Shdr ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  SHT_REL ; 
 int /*<<< orphan*/  SHT_RELA ; 
 scalar_t__ TRUE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct elf_backend_data* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

bfd_boolean
FUNC6 (bfd *abfd,
			  Elf_Internal_Shdr *rel_hdr,
			  asection *asect,
			  bfd_boolean use_rela_p)
{
  char *name;
  const struct elf_backend_data *bed = FUNC3 (abfd);
  bfd_size_type amt = sizeof ".rela" + FUNC5 (asect->name);

  name = FUNC1 (abfd, amt);
  if (name == NULL)
    return FALSE;
  FUNC4 (name, "%s%s", use_rela_p ? ".rela" : ".rel", asect->name);
  rel_hdr->sh_name =
    (unsigned int) FUNC0 (FUNC2 (abfd), name,
					FALSE);
  if (rel_hdr->sh_name == (unsigned int) -1)
    return FALSE;
  rel_hdr->sh_type = use_rela_p ? SHT_RELA : SHT_REL;
  rel_hdr->sh_entsize = (use_rela_p
			 ? bed->s->sizeof_rela
			 : bed->s->sizeof_rel);
  rel_hdr->sh_addralign = 1 << bed->s->log_file_align;
  rel_hdr->sh_flags = 0;
  rel_hdr->sh_addr = 0;
  rel_hdr->sh_size = 0;
  rel_hdr->sh_offset = 0;

  return TRUE;
}
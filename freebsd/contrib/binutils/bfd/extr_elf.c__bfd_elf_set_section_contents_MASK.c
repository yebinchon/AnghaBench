#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sec_ptr ;
typedef  scalar_t__ file_ptr ;
typedef  scalar_t__ bfd_size_type ;
typedef  scalar_t__ bfd_signed_vma ;
typedef  int /*<<< orphan*/  bfd_boolean ;
struct TYPE_8__ {int /*<<< orphan*/  output_has_begun; } ;
typedef  TYPE_1__ bfd ;
struct TYPE_9__ {scalar_t__ sh_offset; } ;
struct TYPE_10__ {TYPE_2__ this_hdr; } ;
typedef  TYPE_2__ Elf_Internal_Shdr ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (void const*,scalar_t__,TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ ) ; 

bfd_boolean
FUNC4 (bfd *abfd,
			       sec_ptr section,
			       const void *location,
			       file_ptr offset,
			       bfd_size_type count)
{
  Elf_Internal_Shdr *hdr;
  bfd_signed_vma pos;

  if (! abfd->output_has_begun
      && ! FUNC0 (abfd, NULL))
    return FALSE;

  hdr = &FUNC3 (section)->this_hdr;
  pos = hdr->sh_offset + offset;
  if (FUNC2 (abfd, pos, SEEK_SET) != 0
      || FUNC1 (location, count, abfd) != count)
    return FALSE;

  return TRUE;
}
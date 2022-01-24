#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_1__* xvec; } ;
typedef  TYPE_2__ bfd ;
struct TYPE_11__ {int e_phnum; } ;
struct TYPE_10__ {int /*<<< orphan*/  phdr; } ;
struct TYPE_8__ {scalar_t__ flavour; } ;
typedef  int /*<<< orphan*/  Elf_Internal_Phdr ;

/* Variables and functions */
 int /*<<< orphan*/  bfd_error_wrong_format ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ bfd_target_elf_flavour ; 
 TYPE_5__* FUNC1 (TYPE_2__*) ; 
 TYPE_3__* FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ,int) ; 

int
FUNC4 (bfd *abfd, void *phdrs)
{
  int num_phdrs;

  if (abfd->xvec->flavour != bfd_target_elf_flavour)
    {
      FUNC0 (bfd_error_wrong_format);
      return -1;
    }

  num_phdrs = FUNC1 (abfd)->e_phnum;
  FUNC3 (phdrs, FUNC2 (abfd)->phdr,
	  num_phdrs * sizeof (Elf_Internal_Phdr));

  return num_phdrs;
}
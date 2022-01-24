#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  bfd_vma ;
struct TYPE_8__ {scalar_t__ format; TYPE_1__* xvec; } ;
typedef  TYPE_2__ bfd ;
struct TYPE_9__ {int /*<<< orphan*/  gp; } ;
struct TYPE_7__ {scalar_t__ flavour; } ;

/* Variables and functions */
 scalar_t__ bfd_object ; 
 scalar_t__ bfd_target_ecoff_flavour ; 
 scalar_t__ bfd_target_elf_flavour ; 
 TYPE_4__* FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 

bfd_vma
FUNC2 (bfd *abfd)
{
  if (! abfd)
    return 0;
  if (abfd->format != bfd_object)
    return 0;

  if (abfd->xvec->flavour == bfd_target_ecoff_flavour)
    return FUNC0 (abfd)->gp;
  else if (abfd->xvec->flavour == bfd_target_elf_flavour)
    return FUNC1 (abfd);

  return 0;
}
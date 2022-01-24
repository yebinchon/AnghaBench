#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct elf_s390_obj_tdata {int dummy; } ;
typedef  int bfd_size_type ;
typedef  int /*<<< orphan*/  bfd_boolean ;
struct TYPE_6__ {int /*<<< orphan*/ * any; } ;
struct TYPE_7__ {TYPE_1__ tdata; } ;
typedef  TYPE_2__ bfd ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_2__*,int) ; 

__attribute__((used)) static bfd_boolean
FUNC2 (bfd *abfd)
{
  if (abfd->tdata.any == NULL)
    {
      bfd_size_type amt = sizeof (struct elf_s390_obj_tdata);
      abfd->tdata.any = FUNC1 (abfd, amt);
      if (abfd->tdata.any == NULL)
	return FALSE;
    }
  return FUNC0 (abfd);
}
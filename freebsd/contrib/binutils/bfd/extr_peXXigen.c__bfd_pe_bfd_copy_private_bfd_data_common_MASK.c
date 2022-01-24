#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  bfd_boolean ;
struct TYPE_12__ {TYPE_3__* xvec; } ;
typedef  TYPE_4__ bfd ;
struct TYPE_10__ {TYPE_1__* DataDirectory; } ;
struct TYPE_13__ {TYPE_2__ pe_opthdr; int /*<<< orphan*/  has_reloc_section; int /*<<< orphan*/  dll; } ;
struct TYPE_11__ {scalar_t__ flavour; } ;
struct TYPE_9__ {scalar_t__ Size; scalar_t__ VirtualAddress; } ;

/* Variables and functions */
 size_t PE_BASE_RELOCATION_TABLE ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ bfd_target_coff_flavour ; 
 TYPE_5__* FUNC0 (TYPE_4__*) ; 

bfd_boolean
FUNC1 (bfd * ibfd, bfd * obfd)
{
  /* One day we may try to grok other private data.  */
  if (ibfd->xvec->flavour != bfd_target_coff_flavour
      || obfd->xvec->flavour != bfd_target_coff_flavour)
    return TRUE;

  FUNC0 (obfd)->pe_opthdr = FUNC0 (ibfd)->pe_opthdr;
  FUNC0 (obfd)->dll = FUNC0 (ibfd)->dll;

  /* For strip: if we removed .reloc, we'll make a real mess of things
     if we don't remove this entry as well.  */
  if (! FUNC0 (obfd)->has_reloc_section)
    {
      FUNC0 (obfd)->pe_opthdr.DataDirectory[PE_BASE_RELOCATION_TABLE].VirtualAddress = 0;
      FUNC0 (obfd)->pe_opthdr.DataDirectory[PE_BASE_RELOCATION_TABLE].Size = 0;
    }
  return TRUE;
}
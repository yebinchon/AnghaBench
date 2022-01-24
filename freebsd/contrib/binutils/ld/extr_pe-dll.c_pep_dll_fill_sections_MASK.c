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
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct bfd_link_info {int /*<<< orphan*/  pie; scalar_t__ shared; } ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_9__ {int /*<<< orphan*/  contents; } ;
struct TYPE_6__ {int /*<<< orphan*/  ImageBase; } ;
struct TYPE_8__ {int dll; TYPE_1__ pe_opthdr; } ;
struct TYPE_7__ {int /*<<< orphan*/  contents; } ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  edata_d ; 
 TYPE_4__* edata_s ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct bfd_link_info*) ; 
 int /*<<< orphan*/  filler_bfd ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct bfd_link_info*) ; 
 int /*<<< orphan*/  image_base ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 TYPE_3__* FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  reloc_d ; 
 TYPE_2__* reloc_s ; 
 scalar_t__ reloc_sz ; 

void
FUNC10 (bfd *abfd, struct bfd_link_info *info)
{
  FUNC9 (FUNC0 (abfd));
  image_base = FUNC8 (abfd)->pe_opthdr.ImageBase;

  FUNC3 (abfd, info);
  if (reloc_sz > 0)
    {
      FUNC1 (filler_bfd, reloc_s, reloc_sz);

      /* Resize the sections.  */
      FUNC5 ();
      FUNC6 (NULL, TRUE);

      /* Redo special stuff.  */
      FUNC7 ();

      /* Do the assignments again.  */
      FUNC4 ();
    }

  FUNC2 (abfd, info);

  if (info->shared && !info->pie)
    FUNC8 (abfd)->dll = 1;

  edata_s->contents = edata_d;
  reloc_s->contents = reloc_d;
}
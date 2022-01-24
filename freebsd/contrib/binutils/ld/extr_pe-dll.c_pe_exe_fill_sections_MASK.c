#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct bfd_link_info {int dummy; } ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_5__ {int /*<<< orphan*/  ImageBase; } ;
struct TYPE_7__ {TYPE_1__ pe_opthdr; } ;
struct TYPE_6__ {int /*<<< orphan*/  contents; } ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  filler_bfd ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct bfd_link_info*) ; 
 int /*<<< orphan*/  image_base ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 TYPE_3__* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  reloc_d ; 
 TYPE_2__* reloc_s ; 
 scalar_t__ reloc_sz ; 

void
FUNC9 (bfd *abfd, struct bfd_link_info *info)
{
  FUNC8 (FUNC0 (abfd));
  image_base = FUNC7 (abfd)->pe_opthdr.ImageBase;

  FUNC2 (abfd, info);
  if (reloc_sz > 0)
    {
      FUNC1 (filler_bfd, reloc_s, reloc_sz);

      /* Resize the sections.  */
      FUNC4 ();
      FUNC5 (NULL, TRUE);

      /* Redo special stuff.  */
      FUNC6 ();

      /* Do the assignments again.  */
      FUNC3 ();
    }
  reloc_s->contents = reloc_d;
}
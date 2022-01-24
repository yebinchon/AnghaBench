#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_2__ {int real_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int IMAGE_FILE_LARGE_ADDRESS_AWARE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bfd_boolean
FUNC3 (bfd *ibfd, bfd *obfd)
{
  /* PR binutils/716: Copy the large address aware flag.
     XXX: Should we be copying other flags or other fields in the pe_data()
     structure ?  */
  if (FUNC1 (obfd) != NULL
      && FUNC1 (ibfd) != NULL
      && FUNC1 (ibfd)->real_flags & IMAGE_FILE_LARGE_ADDRESS_AWARE)
    FUNC1 (obfd)->real_flags |= IMAGE_FILE_LARGE_ADDRESS_AWARE;
      
  if (!FUNC0 (ibfd, obfd))
    return FALSE;

  if (&pe_saved_coff_bfd_copy_private_bfd_data)
    return FUNC2 (ibfd, obfd);

  return TRUE;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct internal_ldhdr {int l_nsyms; } ;
typedef  int /*<<< orphan*/  bfd_byte ;
struct TYPE_8__ {int flags; } ;
typedef  TYPE_1__ bfd ;
typedef  int /*<<< orphan*/  asymbol ;
typedef  int /*<<< orphan*/  asection ;
struct TYPE_9__ {int /*<<< orphan*/ * contents; } ;

/* Variables and functions */
 int DYNAMIC ; 
 int /*<<< orphan*/  bfd_error_invalid_operation ; 
 int /*<<< orphan*/  bfd_error_no_symbols ; 
 int /*<<< orphan*/ * FUNC0 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,void*,struct internal_ldhdr*) ; 
 TYPE_3__* FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 

long
FUNC5 (bfd *abfd)
{
  asection *lsec;
  bfd_byte *contents;
  struct internal_ldhdr ldhdr;

  if ((abfd->flags & DYNAMIC) == 0)
    {
      FUNC1 (bfd_error_invalid_operation);
      return -1;
    }

  lsec = FUNC0 (abfd, ".loader");
  if (lsec == NULL)
    {
      FUNC1 (bfd_error_no_symbols);
      return -1;
    }

  if (! FUNC4 (abfd, lsec))
    return -1;
  contents = FUNC3 (abfd, lsec)->contents;

  FUNC2 (abfd, (void *) contents, &ldhdr);

  return (ldhdr.l_nsyms + 1) * sizeof (asymbol *);
}
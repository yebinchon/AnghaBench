#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sec_ptr ;
struct TYPE_5__ {scalar_t__ format; } ;
typedef  TYPE_1__ bfd ;
typedef  int /*<<< orphan*/  asymbol ;
typedef  int /*<<< orphan*/  arelent ;

/* Variables and functions */
 long FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  _bfd_canonicalize_reloc ; 
 int /*<<< orphan*/  bfd_error_invalid_operation ; 
 scalar_t__ bfd_object ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

long
FUNC2 (bfd *abfd,
			sec_ptr asect,
			arelent **location,
			asymbol **symbols)
{
  if (abfd->format != bfd_object)
    {
      FUNC1 (bfd_error_invalid_operation);
      return -1;
    }

  return FUNC0 (abfd, _bfd_canonicalize_reloc,
		   (abfd, asect, location, symbols));
}
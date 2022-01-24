#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  bfd_boolean ;
struct TYPE_9__ {TYPE_1__* xvec; } ;
typedef  TYPE_2__ bfd ;
struct TYPE_8__ {scalar_t__ byteorder; } ;

/* Variables and functions */
 scalar_t__ BFD_ENDIAN_UNKNOWN ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,TYPE_2__*) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  bfd_error_wrong_format ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char const*,TYPE_2__*) ; 

__attribute__((used)) static bfd_boolean
FUNC5 (bfd *ibfd, bfd *obfd)
{
  /* Check if we have the same endianess.  */
  if (ibfd->xvec->byteorder != obfd->xvec->byteorder
      && ibfd->xvec->byteorder != BFD_ENDIAN_UNKNOWN
      && obfd->xvec->byteorder != BFD_ENDIAN_UNKNOWN)
    {
      const char *msg;

      if (FUNC2 (ibfd))
	msg = FUNC0("%B: compiled for a big endian system "
		"and target is little endian");
      else
	msg = FUNC0("%B: compiled for a little endian system "
		"and target is big endian");

      FUNC1) (msg, ibfd);

      FUNC3 (bfd_error_wrong_format);
      return FALSE;
    }

  return TRUE;
}
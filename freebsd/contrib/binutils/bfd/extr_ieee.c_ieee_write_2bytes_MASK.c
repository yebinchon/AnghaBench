#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  bfd_size_type ;
typedef  int bfd_byte ;
typedef  int /*<<< orphan*/  bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int FUNC0 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bfd_boolean
FUNC1 (bfd *abfd, int bytes)
{
  bfd_byte buffer[2];

  buffer[0] = bytes >> 8;
  buffer[1] = bytes & 0xff;
  if (FUNC0 ((void *) buffer, (bfd_size_type) 2, abfd) != 2)
    return FALSE;
  return TRUE;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  bfd_vma ;
typedef  int /*<<< orphan*/  bfd_byte ;
typedef  int /*<<< orphan*/  bfd_boolean ;
struct TYPE_4__ {scalar_t__ filename; } ;
typedef  TYPE_1__ bfd ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 unsigned int FUNC1 (scalar_t__) ; 

__attribute__((used)) static bfd_boolean
FUNC2 (bfd *abfd)
{
  unsigned int len = FUNC1 (abfd->filename);

  /* I'll put an arbitrary 40 char limit on header size.  */
  if (len > 40)
    len = 40;

  return FUNC0 (abfd, 0, (bfd_vma) 0,
			    (bfd_byte *) abfd->filename,
			    (bfd_byte *) abfd->filename + len);
}
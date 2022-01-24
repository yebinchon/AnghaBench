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
struct bfd_link_info {int dummy; } ;
typedef  int /*<<< orphan*/  bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct bfd_link_info*,int /*<<< orphan*/ ) ; 
#define  bfd_archive 129 
 int /*<<< orphan*/  bfd_error_wrong_format ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
#define  bfd_object 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct bfd_link_info*) ; 
 int /*<<< orphan*/  coff_link_check_archive_element ; 

bfd_boolean
FUNC4 (bfd *abfd, struct bfd_link_info *info)
{
  switch (FUNC1 (abfd))
    {
    case bfd_object:
      return FUNC3 (abfd, info);
    case bfd_archive:
      return FUNC0
	(abfd, info, coff_link_check_archive_element);
    default:
      FUNC2 (bfd_error_wrong_format);
      return FALSE;
    }
}
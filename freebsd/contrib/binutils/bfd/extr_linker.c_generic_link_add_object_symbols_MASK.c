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
struct bfd_symbol {int dummy; } ;
struct bfd_link_info {int dummy; } ;
typedef  int /*<<< orphan*/  bfd_size_type ;
typedef  int /*<<< orphan*/  bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 struct bfd_symbol** FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct bfd_link_info*,int /*<<< orphan*/ ,struct bfd_symbol**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bfd_boolean
FUNC4 (bfd *abfd,
				 struct bfd_link_info *info,
				 bfd_boolean collect)
{
  bfd_size_type symcount;
  struct bfd_symbol **outsyms;

  if (! FUNC3 (abfd))
    return FALSE;
  symcount = FUNC1 (abfd);
  outsyms = FUNC0 (abfd);
  return FUNC2 (abfd, info, symcount, outsyms, collect);
}
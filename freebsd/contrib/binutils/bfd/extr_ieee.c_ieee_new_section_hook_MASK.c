#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ieee_per_section_type ;
typedef  int /*<<< orphan*/  bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_6__ {scalar_t__ used_by_bfd; } ;
typedef  TYPE_1__ asection ;
struct TYPE_7__ {TYPE_1__* section; int /*<<< orphan*/ * data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 
 TYPE_2__* FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static bfd_boolean
FUNC3 (bfd *abfd, asection *newsect)
{
  if (!newsect->used_by_bfd)
    {
      newsect->used_by_bfd = FUNC1 (abfd, sizeof (ieee_per_section_type));
      if (!newsect->used_by_bfd)
	return FALSE;
    }
  FUNC2 (newsect)->data = NULL;
  FUNC2 (newsect)->section = newsect;
  return FUNC0 (abfd, newsect);
}
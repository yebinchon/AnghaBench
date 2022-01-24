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
typedef  int bfd_size_type ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_4__ {int /*<<< orphan*/ * the_bfd; } ;
typedef  TYPE_1__ asymbol ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int) ; 

asymbol *
FUNC1 (bfd *abfd)
{
  bfd_size_type amt = sizeof (asymbol);
  asymbol *new = FUNC0 (abfd, amt);
  if (new)
    new->the_bfd = abfd;
  return new;
}
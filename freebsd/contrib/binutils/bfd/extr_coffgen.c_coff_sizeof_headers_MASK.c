#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct bfd_link_info {int /*<<< orphan*/  relocatable; } ;
struct TYPE_6__ {size_t section_count; } ;
typedef  TYPE_1__ bfd ;

/* Variables and functions */
 size_t FUNC0 (TYPE_1__*) ; 
 size_t FUNC1 (TYPE_1__*) ; 
 size_t FUNC2 (TYPE_1__*) ; 

int
FUNC3 (bfd *abfd, struct bfd_link_info *info)
{
  size_t size;

  if (!info->relocatable)
    size = FUNC1 (abfd) + FUNC0 (abfd);
  else
    size = FUNC1 (abfd);

  size += abfd->section_count * FUNC2 (abfd);
  return size;
}
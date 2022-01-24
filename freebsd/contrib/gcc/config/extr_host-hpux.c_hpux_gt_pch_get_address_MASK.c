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

/* Variables and functions */
 scalar_t__ MAP_FAILED ; 
 int /*<<< orphan*/  MAP_PRIVATE ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 scalar_t__ TRY_EMPTY_VM_SPACE ; 
 void* FUNC0 (void*,size_t,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*,size_t) ; 

__attribute__((used)) static void *
FUNC2 (size_t size, int fd)
{
  void *addr;

  addr = FUNC0 ((void *)TRY_EMPTY_VM_SPACE, size, PROT_READ | PROT_WRITE,
	       MAP_PRIVATE, fd, 0);

  /* If we failed the map, that means there's *no* free space.  */
  if (addr == (void *) MAP_FAILED)
    return NULL;
  /* Unmap the area before returning.  */
  FUNC1 (addr, size);

  return addr;
}
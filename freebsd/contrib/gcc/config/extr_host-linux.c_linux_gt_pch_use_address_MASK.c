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
typedef  scalar_t__ ssize_t ;
typedef  scalar_t__ off_t ;

/* Variables and functions */
 int MAP_ANONYMOUS ; 
 scalar_t__ MAP_FAILED ; 
 int MAP_PRIVATE ; 
 int /*<<< orphan*/  FUNC0 (size_t,int /*<<< orphan*/ ) ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  SSIZE_MAX ; 
 scalar_t__ FUNC1 (int,size_t,int /*<<< orphan*/ ) ; 
 void* FUNC2 (void*,size_t,int,int,int,size_t) ; 
 int /*<<< orphan*/  FUNC3 (void*,size_t) ; 
 scalar_t__ FUNC4 (int,void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5 (void *base, size_t size, int fd, size_t offset)
{
  void *addr;

  /* We're called with size == 0 if we're not planning to load a PCH
     file at all.  This allows the hook to free any static space that
     we might have allocated at link time.  */
  if (size == 0)
    return -1;

  /* Try to map the file with MAP_PRIVATE.  */
  addr = FUNC2 (base, size, PROT_READ | PROT_WRITE, MAP_PRIVATE, fd, offset);

  if (addr == base)
    return 1;

  if (addr != (void *) MAP_FAILED)
    FUNC3 (addr, size);

  /* Try to make an anonymous private mmap at the desired location.  */
  addr = FUNC2 (base, size, PROT_READ | PROT_WRITE,
	       MAP_PRIVATE | MAP_ANONYMOUS, -1, 0);

  if (addr != base)
    {
      if (addr != (void *) MAP_FAILED)
        FUNC3 (addr, size);
      return -1;
    }

  if (FUNC1 (fd, offset, SEEK_SET) == (off_t)-1)
    return -1;

  while (size)
    {
      ssize_t nbytes;

      nbytes = FUNC4 (fd, base, FUNC0 (size, SSIZE_MAX));
      if (nbytes <= 0)
        return -1;
      base = (char *) base + nbytes;
      size -= nbytes;
    }

  return 1;
}
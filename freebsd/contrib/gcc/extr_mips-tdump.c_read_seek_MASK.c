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
typedef  scalar_t__ off_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*,long,long) ; 
 int FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 long FUNC4 (int /*<<< orphan*/ ,void*,size_t) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  tfile_fd ; 
 scalar_t__ tfile_offset ; 
 void* FUNC5 (size_t) ; 

__attribute__((used)) static void *
FUNC6 (void *ptr, size_t size, off_t offset,  const char *context)
{
  long read_size = 0;

  if (size == 0)		/* nothing to read */
    return ptr;

  if (!ptr)
    ptr = FUNC5 (size);

  if ((tfile_offset != offset && FUNC2 (tfile_fd, offset, 0) == -1)
      || (read_size = FUNC4 (tfile_fd, ptr, size)) < 0)
    {
      FUNC3 (context);
      FUNC0 (1);
    }

  if (read_size != (long) size)
    {
      FUNC1 (stderr, "%s: read %ld bytes, expected %ld bytes\n",
	       context, read_size, (long) size);
      FUNC0 (1);
    }

  tfile_offset = offset + size;
  return ptr;
}
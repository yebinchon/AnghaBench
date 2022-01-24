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
 void* MAP_FAILED ; 
 int /*<<< orphan*/  MAP_PRIVATE ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 int /*<<< orphan*/  SEEK_CUR ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int,size_t) ; 
 scalar_t__ FUNC2 (int,scalar_t__,int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ *,size_t,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*,size_t) ; 

__attribute__((used)) static void *
FUNC5 (size_t sz, int fd)
{
  void *base;
  off_t p = FUNC2(fd, 0, SEEK_CUR);

  if (p == (off_t) -1)
    FUNC0 ("can't get position in PCH file: %m");

   /* Cygwin requires that the underlying file be at least
      as large as the requested mapping.  */
  if ((size_t) p < sz)
  { 
    if ( FUNC1 (fd, sz) == -1 )
      FUNC0 ("can't extend PCH file: %m");
  }

  base = FUNC3 (NULL, sz, PROT_READ | PROT_WRITE, MAP_PRIVATE, fd, 0);

  if (base == MAP_FAILED)
    base = NULL;
  else
    FUNC4 (base, sz);

  if (FUNC2 (fd, p, SEEK_SET) == (off_t) -1 )
    FUNC0 ("can't set position in PCH file: %m");

  return base;
}
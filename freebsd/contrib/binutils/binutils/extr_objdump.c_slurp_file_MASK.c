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
struct stat {size_t st_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAP_SHARED ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  PROT_READ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 scalar_t__ FUNC2 (int,struct stat*) ; 
 int FUNC3 () ; 
 char* FUNC4 (size_t) ; 
 char* FUNC5 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int,char*,size_t) ; 

__attribute__((used)) static const char *
FUNC8 (const char *fn, size_t *size)
{
#ifdef HAVE_MMAP
  int ps = getpagesize ();
  size_t msize;
#endif
  const char *map;
  struct stat st;
  int fd = FUNC6 (fn, O_RDONLY);

  if (fd < 0)
    return NULL;
  if (FUNC2 (fd, &st) < 0)
    return NULL;
  *size = st.st_size;
#ifdef HAVE_MMAP
  msize = (*size + ps - 1) & ~(ps - 1);
  map = mmap (NULL, msize, PROT_READ, MAP_SHARED, fd, 0);
  if (map != (char *)-1L)
    {
      close(fd);
      return map; 
    }
#endif
  map = FUNC4 (*size);
  if (!map || (size_t) FUNC7 (fd, (char *)map, *size) != *size) 
    { 
      FUNC1 ((void *)map);
      map = NULL;
    }
  FUNC0 (fd);
  return map; 
}
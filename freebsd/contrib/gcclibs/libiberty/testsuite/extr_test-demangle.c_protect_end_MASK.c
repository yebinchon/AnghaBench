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
 int MAP_ANONYMOUS ; 
 int MAP_PRIVATE ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 size_t FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,size_t) ; 
 char* FUNC2 (int /*<<< orphan*/ *,size_t,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,size_t) ; 
 size_t FUNC4 (char const*) ; 

__attribute__((used)) static const char *
FUNC5 (const char * s)
{
#if defined(HAVE_MMAP) && defined (MAP_ANONYMOUS)
  size_t pagesize = getpagesize();
  static char * buf;
  size_t s_len = strlen (s);
  char * result;
  
  /* Don't try if S is too long.  */
  if (s_len >= pagesize)
    return s;

  /* Allocate one page of allocated space followed by an unmapped
     page.  */
  if (buf == NULL)
    {
      buf = mmap (NULL, pagesize * 2, PROT_READ | PROT_WRITE,
		  MAP_PRIVATE | MAP_ANONYMOUS, -1, 0);
      if (! buf)
	return s;
      munmap (buf + pagesize, pagesize);
    }
  
  result = buf + (pagesize - s_len - 1);
  memcpy (result, s, s_len + 1);
  return result;
#else
  return s;
#endif
}
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
typedef  int /*<<< orphan*/  voidp ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,size_t) ; 

char *
FUNC4(char *p, char *s)
{
  size_t len = FUNC1(s) + 1;

  p = (char *) FUNC2((voidp) p, len);

  FUNC3(p, s, len);
#ifdef DEBUG_MEM
# if defined(HAVE_MALLINFO) && defined(HAVE_MALLOC_VERIFY)
  malloc_verify();
# endif /* not defined(HAVE_MALLINFO) && defined(HAVE_MALLOC_VERIFY) */
#endif /* DEBUG_MEM */
  return p;
}
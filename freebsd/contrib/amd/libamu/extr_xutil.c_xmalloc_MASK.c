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
typedef  scalar_t__ voidp ;

/* Variables and functions */
 int /*<<< orphan*/  D_MEM ; 
 int /*<<< orphan*/  XLOG_DEBUG ; 
 int /*<<< orphan*/  XLOG_ERROR ; 
 int /*<<< orphan*/  XLOG_FATAL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

voidp
FUNC6(int len)
{
  voidp p;
  int retries = 600;

  /*
   * Avoid malloc's which return NULL for malloc(0)
   */
  if (len == 0)
    len = 1;

  do {
    p = (voidp) FUNC3((unsigned) len);
    if (p) {
      if (FUNC1(D_MEM))
	FUNC4(XLOG_DEBUG, "Allocated size %d; block %p", len, p);
      return p;
    }
    if (retries > 0) {
      FUNC4(XLOG_ERROR, "Retrying memory allocation");
      FUNC5(1);
    }
  } while (--retries);

  FUNC4(XLOG_FATAL, "Out of memory");
  FUNC2(1);

  FUNC0();

  return 0;
}
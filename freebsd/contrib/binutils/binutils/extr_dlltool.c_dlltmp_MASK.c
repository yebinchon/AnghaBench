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
 char* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tmp_prefix ; 

__attribute__((used)) static char *
FUNC3 (char **buf, const char *fmt)
{
  if (!*buf)
    {
      *buf = FUNC0 (FUNC2 (tmp_prefix) + 64);
      FUNC1 (*buf, fmt, tmp_prefix);
    }
  return *buf;
}
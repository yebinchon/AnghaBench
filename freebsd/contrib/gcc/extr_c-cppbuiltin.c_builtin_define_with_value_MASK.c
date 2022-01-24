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
 scalar_t__ FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  parse_in ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char const*,char const*) ; 
 size_t FUNC3 (char const*) ; 

void
FUNC4 (const char *macro, const char *expansion, int is_str)
{
  char *buf;
  size_t mlen = FUNC3 (macro);
  size_t elen = FUNC3 (expansion);
  size_t extra = 2;  /* space for an = and a NUL */

  if (is_str)
    extra += 2;  /* space for two quote marks */

  buf = (char *) FUNC0 (mlen + elen + extra);
  if (is_str)
    FUNC2 (buf, "%s=\"%s\"", macro, expansion);
  else
    FUNC2 (buf, "%s=%s", macro, expansion);

  FUNC1 (parse_in, buf);
}
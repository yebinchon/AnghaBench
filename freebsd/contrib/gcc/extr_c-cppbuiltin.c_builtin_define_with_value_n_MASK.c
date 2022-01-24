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
 int /*<<< orphan*/  FUNC2 (char*,char const*,size_t) ; 
 int /*<<< orphan*/  parse_in ; 
 size_t FUNC3 (char const*) ; 

__attribute__((used)) static void
FUNC4 (const char *macro, const char *expansion, size_t elen)
{
  char *buf;
  size_t mlen = FUNC3 (macro);

  /* Space for an = and a NUL.  */
  buf = (char *) FUNC0 (mlen + elen + 2);
  FUNC2 (buf, macro, mlen);
  buf[mlen] = '=';
  FUNC2 (buf + mlen + 1, expansion, elen);
  buf[mlen + elen + 1] = '\0';

  FUNC1 (parse_in, buf);
}
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
typedef  int /*<<< orphan*/  HOST_WIDE_INT ;

/* Variables and functions */
 char* HOST_WIDE_INT_PRINT_DEC ; 
 scalar_t__ FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,size_t) ; 
 int /*<<< orphan*/  parse_in ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int /*<<< orphan*/ ) ; 
 size_t FUNC4 (char const*) ; 

__attribute__((used)) static void
FUNC5 (const char *macro, HOST_WIDE_INT value)
{
  char *buf;
  size_t mlen = FUNC4 (macro);
  size_t vlen = 18;
  size_t extra = 2; /* space for = and NUL.  */

  buf = (char *) FUNC0 (mlen + vlen + extra);
  FUNC2 (buf, macro, mlen);
  buf[mlen] = '=';
  FUNC3 (buf + mlen + 1, HOST_WIDE_INT_PRINT_DEC, value);

  FUNC1 (parse_in, buf);
}
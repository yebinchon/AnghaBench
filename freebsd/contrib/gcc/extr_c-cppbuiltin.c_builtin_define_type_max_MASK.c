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
typedef  int /*<<< orphan*/  tree ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  parse_in ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,char const*,char const*,char const*) ; 
 scalar_t__ FUNC6 (char const*) ; 

__attribute__((used)) static void
FUNC7 (const char *macro, tree type, int is_long)
{
  static const char *const values[]
    = { "127", "255",
	"32767", "65535",
	"2147483647", "4294967295",
	"9223372036854775807", "18446744073709551615",
	"170141183460469231731687303715884105727",
	"340282366920938463463374607431768211455" };
  static const char *const suffixes[] = { "", "U", "L", "UL", "LL", "ULL" };

  const char *value, *suffix;
  char *buf;
  size_t idx;

  /* Pre-rendering the values mean we don't have to futz with printing a
     multi-word decimal value.  There are also a very limited number of
     precisions that we support, so it's really a waste of time.  */
  switch (FUNC0 (type))
    {
    case 8:	idx = 0; break;
    case 16:	idx = 2; break;
    case 32:	idx = 4; break;
    case 64:	idx = 6; break;
    case 128:	idx = 8; break;
    default:    FUNC4 ();
    }

  value = values[idx + FUNC1 (type)];
  suffix = suffixes[is_long * 2 + FUNC1 (type)];

  buf = (char *) FUNC2 (FUNC6 (macro) + 1 + FUNC6 (value)
                         + FUNC6 (suffix) + 1);
  FUNC5 (buf, "%s=%s%s", macro, value, suffix);

  FUNC3 (parse_in, buf);
}
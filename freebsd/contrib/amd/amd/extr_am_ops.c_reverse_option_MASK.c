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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*,char*,int) ; 
 scalar_t__ FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int) ; 

__attribute__((used)) static char *
FUNC4(const char *opt)
{
  static char buf[80];

  /* sanity check */
  if (!opt)
    return NULL;

  /* check special cases */
  /* XXX: if this gets too long, rewrite the code more flexibly */
  if (FUNC1(opt, "ro")) return "rw";
  if (FUNC1(opt, "rw")) return "ro";
  if (FUNC1(opt, "bg")) return "fg";
  if (FUNC1(opt, "fg")) return "bg";
  if (FUNC1(opt, "soft")) return "hard";
  if (FUNC1(opt, "hard")) return "soft";

  /* check if string starts with 'no' and chop it */
  if (FUNC0(opt, "no", 2)) {
    FUNC3(buf, &opt[2], sizeof(buf));
  } else {
    /* finally return a string prepended with 'no' */
    FUNC3(buf, "no", sizeof(buf));
    FUNC2(buf, opt, sizeof(buf));
  }
  return buf;
}
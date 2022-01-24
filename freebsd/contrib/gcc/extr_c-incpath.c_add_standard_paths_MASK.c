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
struct default_include {int /*<<< orphan*/  cxx_aware; scalar_t__ multilib; int /*<<< orphan*/  component; scalar_t__ fname; scalar_t__ add_sysroot; int /*<<< orphan*/  cplusplus; } ;

/* Variables and functions */
 int /*<<< orphan*/  SYSTEM ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 char* FUNC1 (char const*,int /*<<< orphan*/ ,char const*,...) ; 
 int /*<<< orphan*/  cpp_GCC_INCLUDE_DIR ; 
 size_t cpp_GCC_INCLUDE_DIR_len ; 
 struct default_include* cpp_include_defaults ; 
 int /*<<< orphan*/  dir_separator_str ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,size_t) ; 
 char* FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4 (const char *sysroot, const char *iprefix,
		    const char *imultilib, int cxx_stdinc)
{
  const struct default_include *p;
  size_t len;

  if (iprefix && (len = cpp_GCC_INCLUDE_DIR_len) != 0)
    {
      /* Look for directories that start with the standard prefix.
	 "Translate" them, i.e. replace /usr/local/lib/gcc... with
	 IPREFIX and search them first.  */
      for (p = cpp_include_defaults; p->fname; p++)
	{
	  if (!p->cplusplus || cxx_stdinc)
	    {
	      /* Should we be translating sysrooted dirs too?  Assume
		 that iprefix and sysroot are mutually exclusive, for
		 now.  */
	      if (sysroot && p->add_sysroot)
		continue;
	      if (!FUNC2 (p->fname, cpp_GCC_INCLUDE_DIR, len))
		{
		  char *str = FUNC1 (iprefix, p->fname + len, NULL);
		  if (p->multilib && imultilib)
		    str = FUNC1 (str, dir_separator_str, imultilib, NULL);
		  FUNC0 (str, SYSTEM, p->cxx_aware, false);
		}
	    }
	}
    }

  for (p = cpp_include_defaults; p->fname; p++)
    {
      if (!p->cplusplus || cxx_stdinc)
	{
	  char *str;

	  /* Should this directory start with the sysroot?  */
	  if (sysroot && p->add_sysroot)
	    str = FUNC1 (sysroot, p->fname, NULL);
	  else
	    str = FUNC3 (p->fname, p->component);

	  if (p->multilib && imultilib)
	    str = FUNC1 (str, dir_separator_str, imultilib, NULL);

	  FUNC0 (str, SYSTEM, p->cxx_aware, false);
	}
    }
}
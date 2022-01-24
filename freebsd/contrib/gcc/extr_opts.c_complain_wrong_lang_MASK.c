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
struct cl_option {unsigned int flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*,char*,char*) ; 
 char* FUNC2 (unsigned int) ; 

__attribute__((used)) static void
FUNC3 (const char *text, const struct cl_option *option,
		     unsigned int lang_mask)
{
  char *ok_langs, *bad_lang;

  ok_langs = FUNC2 (option->flags);
  bad_lang = FUNC2 (lang_mask);

  /* Eventually this should become a hard error IMO.  */
  FUNC1 (0, "command line option \"%s\" is valid for %s but not for %s",
	   text, ok_langs, bad_lang);

  FUNC0 (ok_langs);
  FUNC0 (bad_lang);
}
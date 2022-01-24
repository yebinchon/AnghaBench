#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {char* fastmap; int* translate; int newline_anchor; int no_sub; scalar_t__ used; scalar_t__ allocated; scalar_t__ buffer; } ;
typedef  TYPE_1__ regex_t ;
typedef  int /*<<< orphan*/  reg_syntax_t ;
typedef  scalar_t__ reg_errcode_t ;
typedef  int* RE_TRANSLATE_TYPE ;

/* Variables and functions */
 int BYTEWIDTH ; 
 int CHAR_SET_SIZE ; 
 scalar_t__ FUNC0 (int) ; 
 int MB_CUR_MAX ; 
 scalar_t__ REG_EPAREN ; 
 scalar_t__ REG_ERPAREN ; 
 scalar_t__ REG_ESPACE ; 
 int REG_EXTENDED ; 
 int REG_ICASE ; 
 int REG_NEWLINE ; 
 scalar_t__ REG_NOERROR ; 
 int REG_NOSUB ; 
 int /*<<< orphan*/  RE_DOT_NEWLINE ; 
 int /*<<< orphan*/  RE_HAT_LISTS_NOT_NEWLINE ; 
 int /*<<< orphan*/  RE_SYNTAX_POSIX_BASIC ; 
 int /*<<< orphan*/  RE_SYNTAX_POSIX_EXTENDED ; 
 int FUNC1 (int) ; 
 scalar_t__ FUNC2 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int) ; 
 int FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 
 scalar_t__ FUNC7 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 

int
FUNC8 (regex_t *preg, const char *pattern, int cflags)
{
  reg_errcode_t ret;
  reg_syntax_t syntax
    = (cflags & REG_EXTENDED) ?
      RE_SYNTAX_POSIX_EXTENDED : RE_SYNTAX_POSIX_BASIC;

  /* regex_compile will allocate the space for the compiled pattern.  */
  preg->buffer = 0;
  preg->allocated = 0;
  preg->used = 0;

  /* Try to allocate space for the fastmap.  */
  preg->fastmap = (char *) FUNC4 (1 << BYTEWIDTH);

  if (cflags & REG_ICASE)
    {
      int i;

      preg->translate
	= (RE_TRANSLATE_TYPE) FUNC4 (CHAR_SET_SIZE
				      * sizeof (*(RE_TRANSLATE_TYPE)0));
      if (preg->translate == NULL)
        return (int) REG_ESPACE;

      /* Map uppercase characters to corresponding lowercase ones.  */
      for (i = 0; i < CHAR_SET_SIZE; i++)
        preg->translate[i] = FUNC0 (i) ? FUNC1 (i) : i;
    }
  else
    preg->translate = NULL;

  /* If REG_NEWLINE is set, newlines are treated differently.  */
  if (cflags & REG_NEWLINE)
    { /* REG_NEWLINE implies neither . nor [^...] match newline.  */
      syntax &= ~RE_DOT_NEWLINE;
      syntax |= RE_HAT_LISTS_NOT_NEWLINE;
      /* It also changes the matching behavior.  */
      preg->newline_anchor = 1;
    }
  else
    preg->newline_anchor = 0;

  preg->no_sub = !!(cflags & REG_NOSUB);

  /* POSIX says a null character in the pattern terminates it, so we
     can use strlen here in compiling the pattern.  */
# ifdef MBS_SUPPORT
  if (MB_CUR_MAX != 1)
    ret = wcs_regex_compile (pattern, strlen (pattern), syntax, preg);
  else
# endif
    ret = FUNC2 (pattern, FUNC6 (pattern), syntax, preg);

  /* POSIX doesn't distinguish between an unmatched open-group and an
     unmatched close-group: both are REG_EPAREN.  */
  if (ret == REG_ERPAREN) ret = REG_EPAREN;

  if (ret == REG_NOERROR && preg->fastmap)
    {
      /* Compute the fastmap now, since regexec cannot modify the pattern
	 buffer.  */
      if (FUNC5 (preg) == -2)
	{
	  /* Some error occurred while computing the fastmap, just forget
	     about it.  */
	  FUNC3 (preg->fastmap);
	  preg->fastmap = NULL;
	}
    }

  return (int) ret;
}
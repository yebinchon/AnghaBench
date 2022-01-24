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
struct re_pattern_buffer {int newline_anchor; scalar_t__ no_sub; int /*<<< orphan*/  regs_allocated; } ;
typedef  scalar_t__ reg_errcode_t ;

/* Variables and functions */
 int MB_CUR_MAX ; 
 int /*<<< orphan*/  REGS_UNALLOCATED ; 
 scalar_t__ FUNC0 (char const*,size_t,int /*<<< orphan*/ ,struct re_pattern_buffer*) ; 
 char const* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * re_error_msgid ; 
 int /*<<< orphan*/  re_syntax_options ; 
 scalar_t__ FUNC2 (char const*,size_t,int /*<<< orphan*/ ,struct re_pattern_buffer*) ; 

const char *
FUNC3 (const char *pattern, size_t length,
                    struct re_pattern_buffer *bufp)
{
  reg_errcode_t ret;

  /* GNU code is written to assume at least RE_NREGS registers will be set
     (and at least one extra will be -1).  */
  bufp->regs_allocated = REGS_UNALLOCATED;

  /* And GNU code determines whether or not to get register information
     by passing null for the REGS argument to re_match, etc., not by
     setting no_sub.  */
  bufp->no_sub = 0;

  /* Match anchors at newline.  */
  bufp->newline_anchor = 1;

# ifdef MBS_SUPPORT
  if (MB_CUR_MAX != 1)
    ret = wcs_regex_compile (pattern, length, re_syntax_options, bufp);
  else
# endif
    ret = FUNC0 (pattern, length, re_syntax_options, bufp);

  if (!ret)
    return NULL;
  return FUNC1 (re_error_msgid[(int) ret]);
}
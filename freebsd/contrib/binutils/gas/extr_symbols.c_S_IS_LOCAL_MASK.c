#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_2__* bsym; } ;
typedef  TYPE_1__ symbolS ;
typedef  int flagword ;
struct TYPE_9__ {int flags; } ;

/* Variables and functions */
 int BSF_FILE ; 
 int BSF_GLOBAL ; 
 int BSF_LOCAL ; 
 int /*<<< orphan*/  DOLLAR_LABEL_CHAR ; 
 int /*<<< orphan*/  LOCAL_LABEL_CHAR ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 char* FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ absolute_section ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  flag_keep_locals ; 
 scalar_t__ flag_mri ; 
 scalar_t__ flag_strip_local_absolute ; 
 scalar_t__ reg_section ; 
 int /*<<< orphan*/  stdoutput ; 
 scalar_t__ FUNC6 (char const*,int /*<<< orphan*/ ) ; 

int
FUNC7 (symbolS *s)
{
  flagword flags;
  const char *name;

  if (FUNC0 (s))
    return 1;

  flags = s->bsym->flags;

  /* Sanity check.  */
  if ((flags & BSF_LOCAL) && (flags & BSF_GLOBAL))
    FUNC3 ();

  if (FUNC4 (s->bsym) == reg_section)
    return 1;

  if (flag_strip_local_absolute
      /* Keep BSF_FILE symbols in order to allow debuggers to identify
	 the source file even when the object file is stripped.  */
      && (flags & (BSF_GLOBAL | BSF_FILE)) == 0
      && FUNC4 (s->bsym) == absolute_section)
    return 1;

  name = FUNC1 (s);
  return (name != NULL
	  && ! FUNC2 (s)
	  && (FUNC6 (name, DOLLAR_LABEL_CHAR)
	      || FUNC6 (name, LOCAL_LABEL_CHAR)
	      || (! flag_keep_locals
		  && (FUNC5 (stdoutput, s->bsym)
		      || (flag_mri
			  && name[0] == '?'
			  && name[1] == '?')))));
}
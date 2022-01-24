#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  va_list ;
struct complaints {int series; TYPE_1__* explanation; } ;
struct complain {scalar_t__ counter; int /*<<< orphan*/  fmt; int /*<<< orphan*/  line; int /*<<< orphan*/ * file; } ;
struct cleanup {int dummy; } ;
typedef  enum complaint_series { ____Placeholder_complaint_series } complaint_series ;
struct TYPE_2__ {int /*<<< orphan*/  postfix; int /*<<< orphan*/  prefix; } ;

/* Variables and functions */
#define  FIRST_MESSAGE 131 
#define  ISOLATED_MESSAGE 130 
#define  SHORT_FIRST_MESSAGE 129 
#define  SUBSEQUENT_MESSAGE 128 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct cleanup*) ; 
 struct complain* FUNC2 (struct complaints*,char const*,int,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gdb_stderr ; 
 struct complaints* FUNC7 (struct complaints**) ; 
 scalar_t__ info_verbose ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct cleanup* FUNC9 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ stop_whining ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  xfree ; 
 int /*<<< orphan*/  FUNC14 (char**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC15 (struct complaints **c, const char *file, int line, const char *fmt,
	    va_list args)
{
  struct complaints *complaints = FUNC7 (c);
  struct complain *complaint = FUNC2 (complaints, file, line, fmt);
  enum complaint_series series;
  FUNC5 (complaints != NULL);

  complaint->counter++;
  if (complaint->counter > stop_whining)
    return;

  if (info_verbose)
    series = SUBSEQUENT_MESSAGE;
  else
    series = complaints->series;

  if (complaint->file != NULL)
    FUNC8 (complaint->file, complaint->line, complaint->fmt, args);
  else if (&warning_hook)
    FUNC12) (complaint->fmt, args);
  else
    {
      if (complaints->explanation == NULL)
	/* A [v]warning() call always appends a newline.  */
	FUNC11 (complaint->fmt, args);
      else
	{
	  char *msg;
	  struct cleanup *cleanups;
	  FUNC14 (&msg, complaint->fmt, args);
	  cleanups = FUNC9 (xfree, msg);
	  FUNC13 ("");
	  if (series != SUBSEQUENT_MESSAGE)
	    FUNC0 ();
	  FUNC3 (gdb_stderr, "%s%s%s",
			    complaints->explanation[series].prefix, msg,
			    complaints->explanation[series].postfix);
	  /* Force a line-break after any isolated message.  For the
             other cases, clear_complaints() takes care of any missing
             trailing newline, the wrap_here() is just a hint.  */
	  if (series == ISOLATED_MESSAGE)
	    /* It would be really nice to use begin_line() here.
	       Unfortunately that function doesn't track GDB_STDERR and
	       consequently will sometimes supress a line when it
	       shouldn't.  */
	    FUNC4 ("\n", gdb_stderr);
	  else
	    FUNC13 ("");
	  FUNC1 (cleanups);
	}
    }

  switch (series)
    {
    case ISOLATED_MESSAGE:
      break;
    case FIRST_MESSAGE:
      complaints->series = SUBSEQUENT_MESSAGE;
      break;
    case SUBSEQUENT_MESSAGE:
    case SHORT_FIRST_MESSAGE:
      complaints->series = SUBSEQUENT_MESSAGE;
      break;
    }

  /* If GDB dumps core, we'd like to see the complaints first.
     Presumably GDB will not be sending so many complaints that this
     becomes a performance hog.  */

  FUNC6 (gdb_stderr);
}
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
typedef  enum language { ____Placeholder_language } language ;
struct TYPE_2__ {int la_language; } ;

/* Variables and functions */
 TYPE_1__* current_language ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  lang_frame_mismatch_warn ; 
 scalar_t__ language_mode ; 
 scalar_t__ language_mode_manual ; 
 int language_unknown ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2 (char *ignore, int from_tty)
{
  enum language flang;		/* The language of the current frame */

  flang = FUNC0 ();
  if (flang != language_unknown &&
      language_mode == language_mode_manual &&
      current_language->la_language != flang)
    FUNC1 ("%s\n", lang_frame_mismatch_warn);
}
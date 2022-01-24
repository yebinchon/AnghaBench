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
typedef  enum languages { ____Placeholder_languages } languages ;

/* Variables and functions */
 int /*<<< orphan*/  USING_SJLJ_EXCEPTIONS ; 
 int /*<<< orphan*/  eh_personality_libfunc ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
#define  lang_cplusplus 129 
#define  lang_java 128 

void
FUNC3 (enum languages lang)
{
  static enum {
    chose_none,
    chose_cpp,
    chose_java,
    gave_error
  } state;

  switch (state)
    {
    case gave_error:
      return;

    case chose_cpp:
      if (lang != lang_cplusplus)
	goto give_error;
      return;

    case chose_java:
      if (lang != lang_java)
	goto give_error;
      return;

    case chose_none:
      ; /* Proceed to language selection.  */
    }

  switch (lang)
    {
    case lang_cplusplus:
      state = chose_cpp;
      break;

    case lang_java:
      state = chose_java;
      eh_personality_libfunc = FUNC2 (USING_SJLJ_EXCEPTIONS
						 ? "__gcj_personality_sj0"
						 : "__gcj_personality_v0");
      break;

    default:
      FUNC1 ();
    }
  return;

 give_error:
  FUNC0 ("mixing C++ and Java catches in a single translation unit");
  state = gave_error;
}
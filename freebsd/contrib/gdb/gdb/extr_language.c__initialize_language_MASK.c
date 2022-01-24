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
struct cmd_list_element {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct cmd_list_element* FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ *) ; 
 struct cmd_list_element* FUNC4 (struct cmd_list_element*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  auto_language_defn ; 
 void* case_sensitive ; 
 int /*<<< orphan*/  class_support ; 
 void* language ; 
 int /*<<< orphan*/  language_auto ; 
 int /*<<< orphan*/  local_language_defn ; 
 int /*<<< orphan*/  no_class ; 
 void* range ; 
 void* FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  set_case_command ; 
 int /*<<< orphan*/  set_check ; 
 int /*<<< orphan*/  FUNC6 (struct cmd_list_element*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  set_language_command ; 
 int /*<<< orphan*/  set_range_command ; 
 int /*<<< orphan*/  set_type_command ; 
 int /*<<< orphan*/  setchecklist ; 
 int /*<<< orphan*/  setlist ; 
 int /*<<< orphan*/  show_case_command ; 
 int /*<<< orphan*/  show_check ; 
 int /*<<< orphan*/  show_language_command ; 
 int /*<<< orphan*/  show_range_command ; 
 int /*<<< orphan*/  show_type_command ; 
 int /*<<< orphan*/  showchecklist ; 
 int /*<<< orphan*/  showlist ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 void* type ; 
 int /*<<< orphan*/  unknown_language_defn ; 
 int /*<<< orphan*/  var_string_noescape ; 

void
FUNC9 (void)
{
  struct cmd_list_element *set, *show;

  /* GDB commands for language specific stuff */

  set = FUNC3 ("language", class_support, var_string_noescape,
		     (char *) &language,
		     "Set the current source language.",
		     &setlist);
  show = FUNC4 (set, &showlist);
  FUNC6 (set, set_language_command);
  FUNC6 (show, show_language_command);

  FUNC2 ("check", no_class, set_check,
		  "Set the status of the type/range checker.",
		  &setchecklist, "set check ", 0, &setlist);
  FUNC0 ("c", "check", no_class, 1, &setlist);
  FUNC0 ("ch", "check", no_class, 1, &setlist);

  FUNC2 ("check", no_class, show_check,
		  "Show the status of the type/range checker.",
		  &showchecklist, "show check ", 0, &showlist);
  FUNC0 ("c", "check", no_class, 1, &showlist);
  FUNC0 ("ch", "check", no_class, 1, &showlist);

  set = FUNC3 ("type", class_support, var_string_noescape,
		     (char *) &type,
		     "Set type checking.  (on/warn/off/auto)",
		     &setchecklist);
  show = FUNC4 (set, &showchecklist);
  FUNC6 (set, set_type_command);
  FUNC6 (show, show_type_command);

  set = FUNC3 ("range", class_support, var_string_noescape,
		     (char *) &range,
		     "Set range checking.  (on/warn/off/auto)",
		     &setchecklist);
  show = FUNC4 (set, &showchecklist);
  FUNC6 (set, set_range_command);
  FUNC6 (show, show_range_command);

  set = FUNC3 ("case-sensitive", class_support, var_string_noescape,
                     (char *) &case_sensitive,
                     "Set case sensitivity in name search.  (on/off/auto)\n\
For Fortran the default is off; for other languages the default is on.",
                     &setlist);
  show = FUNC4 (set, &showlist);
  FUNC6 (set, set_case_command);
  FUNC6 (show, show_case_command);

  FUNC1 (&unknown_language_defn);
  FUNC1 (&local_language_defn);
  FUNC1 (&auto_language_defn);

  language = FUNC5 ("auto", FUNC8 ("auto"));
  type = FUNC5 ("auto", FUNC8 ("auto"));
  range = FUNC5 ("auto", FUNC8 ("auto"));
  case_sensitive = FUNC5 ("auto",FUNC8 ("auto"));

  /* Have the above take effect */
  FUNC7 (language_auto);
}
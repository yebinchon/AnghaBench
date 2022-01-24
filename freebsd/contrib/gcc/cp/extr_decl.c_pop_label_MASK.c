#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
struct TYPE_4__ {scalar_t__ line; int /*<<< orphan*/  file; } ;
typedef  TYPE_1__ location_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ NULL_TREE ; 
 int /*<<< orphan*/  OPT_Wunused_label ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  input_filename ; 
 TYPE_1__ input_location ; 
 int /*<<< orphan*/  processing_template_decl ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7 (tree label, tree old_value)
{
  if (!processing_template_decl)
    {
      if (FUNC0 (label) == NULL_TREE)
	{
	  location_t location;

	  FUNC5 ("label %q+D used but not defined", label);
#ifdef USE_MAPPED_LOCATION
	  location = input_location; /* FIXME want (input_filename, (line)0) */
#else
	  location.file = input_filename;
	  location.line = 0;
#endif
	  /* Avoid crashing later.  */
	  FUNC4 (location, FUNC1 (label));
	}
      else if (!FUNC3 (label))
	FUNC6 (OPT_Wunused_label, "label %q+D defined but not used", label);
    }

  FUNC2 (FUNC1 (label), old_value);
}
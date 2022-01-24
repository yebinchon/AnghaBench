#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  location_t ;
struct TYPE_4__ {int /*<<< orphan*/  (* init ) (char const*) ;} ;
struct TYPE_3__ {scalar_t__ (* init ) () ;} ;

/* Variables and functions */
 int /*<<< orphan*/  BUILTINS_LOCATION ; 
 int /*<<< orphan*/  TV_SYMOUT ; 
 TYPE_2__* debug_hooks ; 
 char const* dump_base_name ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 char* input_filename ; 
 scalar_t__ input_line ; 
 int /*<<< orphan*/  input_location ; 
 TYPE_1__ lang_hooks ; 
 scalar_t__ FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (char const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC12 (const char *name)
{
  location_t save_loc = input_location;
  if (dump_base_name == 0)
    dump_base_name = name && name[0] ? name : "gccdump";

  /* Other front-end initialization.  */
#ifdef USE_MAPPED_LOCATION
  input_location = BUILTINS_LOCATION;
#else
  input_filename = "<built-in>";
  input_line = 0;
#endif
  if (lang_hooks.init () == 0)
    return 0;
  input_location = save_loc;

  FUNC3 (name);

  /* These create various _DECL nodes, so need to be called after the
     front end is initialized.  */
  FUNC5 ();
  FUNC7 ();

  /* The following initialization functions need to generate rtl, so
     provide a dummy function context for them.  */
  FUNC4 ();
  FUNC6 ();
  FUNC2 ();

  /* If dbx symbol table desired, initialize writing it and output the
     predefined types.  */
  FUNC11 (TV_SYMOUT);

#if defined DWARF2_DEBUGGING_INFO || defined DWARF2_UNWIND_INFO
  if (dwarf2out_do_frame ())
    dwarf2out_frame_init ();
#endif

  /* Now we have the correct original filename, we can initialize
     debug output.  */
  (*debug_hooks->init) (name);

  FUNC10 (TV_SYMOUT);

  return 1;
}
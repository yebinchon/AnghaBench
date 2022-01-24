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
typedef  TYPE_1__* outf_p ;
struct TYPE_6__ {char const* name; struct TYPE_6__* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char) ; 
 scalar_t__ FUNC1 (char const) ; 
 size_t NUM_BASE_FILES ; 
 TYPE_1__** base_files ; 
 TYPE_1__* FUNC2 (char const*,char const*) ; 
 char* FUNC3 (char const*) ; 
 char** lang_dir_names ; 
 scalar_t__ FUNC4 (char const*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 TYPE_1__* output_files ; 
 scalar_t__ FUNC6 (char const*,char const*) ; 
 size_t FUNC7 (char const*) ; 
 scalar_t__ FUNC8 (char const*,char*,int) ; 
 char* FUNC9 (char*,char const*) ; 

outf_p
FUNC10 (const char *input_file)
{
  outf_p r;
  size_t len;
  const char *basename;
  const char *for_name;
  const char *output_name;

  /* This can happen when we need a file with visibility on a
     structure that we've never seen.  We have to just hope that it's
     globally visible.  */
  if (input_file == NULL)
    input_file = "system.h";

  /* Determine the output file name.  */
  basename = FUNC3 (input_file);

  len = FUNC7 (basename);
  if ((len > 2 && FUNC4 (basename+len-2, ".c", 2) == 0)
      || (len > 2 && FUNC4 (basename+len-2, ".y", 2) == 0)
      || (len > 3 && FUNC4 (basename+len-3, ".in", 3) == 0))
    {
      char *s;

      output_name = s = FUNC9 ("gt-%s", basename);
      for (; *s != '.'; s++)
	if (! FUNC0 (*s) && *s != '-')
	  *s = '-';
      FUNC5 (s, ".h", sizeof (".h"));
      for_name = basename;
    }
  /* Some headers get used by more than one front-end; hence, it
     would be inappropriate to spew them out to a single gtype-<lang>.h
     (and gengtype doesn't know how to direct spewage into multiple
     gtype-<lang>.h headers at this time).  Instead, we pair up these
     headers with source files (and their special purpose gt-*.h headers).  */
  else if (FUNC6 (basename, "c-common.h") == 0)
    output_name = "gt-c-common.h", for_name = "c-common.c";
  else if (FUNC6 (basename, "c-tree.h") == 0)
    output_name = "gt-c-decl.h", for_name = "c-decl.c";
  else if (FUNC8 (basename, "cp", 2) == 0 && FUNC1 (basename[2])
	   && FUNC6 (basename + 3, "cp-tree.h") == 0)
    output_name = "gt-cp-tree.h", for_name = "cp/tree.c";
  else if (FUNC8 (basename, "cp", 2) == 0 && FUNC1 (basename[2])
	   && FUNC6 (basename + 3, "decl.h") == 0)
    output_name = "gt-cp-decl.h", for_name = "cp/decl.c";
  else if (FUNC8 (basename, "cp", 2) == 0 && FUNC1 (basename[2])
	   && FUNC6 (basename + 3, "name-lookup.h") == 0)
    output_name = "gt-cp-name-lookup.h", for_name = "cp/name-lookup.c";
  else if (FUNC8 (basename, "objc", 4) == 0 && FUNC1 (basename[4])
	   && FUNC6 (basename + 5, "objc-act.h") == 0)
    output_name = "gt-objc-objc-act.h", for_name = "objc/objc-act.c";
  else 
    {
      size_t i;

      for (i = 0; i < NUM_BASE_FILES; i++)
	if (FUNC4 (basename, lang_dir_names[i], FUNC7 (lang_dir_names[i])) == 0
	    && basename[FUNC7(lang_dir_names[i])] == '/')
	  return base_files[i];

      output_name = "gtype-desc.c";
      for_name = NULL;
    }

  /* Look through to see if we've ever seen this output filename before.  */
  for (r = output_files; r; r = r->next)
    if (FUNC6 (r->name, output_name) == 0)
      return r;

  /* If not, create it.  */
  r = FUNC2 (for_name, output_name);

  return r;
}
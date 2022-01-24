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
typedef  enum debug_struct_file { ____Placeholder_debug_struct_file } debug_struct_file ;
typedef  enum debug_info_usage { ____Placeholder_debug_info_usage } debug_info_usage ;

/* Variables and functions */
 int DINFO_STRUCT_FILE_ANY ; 
 int DINFO_STRUCT_FILE_BASE ; 
 int DINFO_STRUCT_FILE_NONE ; 
 int DINFO_STRUCT_FILE_SYS ; 
 size_t DINFO_USAGE_DFN ; 
 size_t DINFO_USAGE_DIR_USE ; 
 size_t DINFO_USAGE_IND_USE ; 
 int DINFO_USAGE_NUM_ENUMS ; 
 scalar_t__ FUNC0 (char*,char const*) ; 
 int* debug_struct_generic ; 
 int* debug_struct_ordinary ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

void
FUNC2 (const char *spec)
{
  /* various labels for comparison */
  static char dfn_lbl[] = "dfn:", dir_lbl[] = "dir:", ind_lbl[] = "ind:";
  static char ord_lbl[] = "ord:", gen_lbl[] = "gen:";
  static char none_lbl[] = "none", any_lbl[] = "any";
  static char base_lbl[] = "base", sys_lbl[] = "sys";

  enum debug_struct_file files = DINFO_STRUCT_FILE_ANY;
  /* Default is to apply to as much as possible. */
  enum debug_info_usage usage = DINFO_USAGE_NUM_ENUMS;
  int ord = 1, gen = 1;

  /* What usage? */
  if (FUNC0 (dfn_lbl, spec))
    usage = DINFO_USAGE_DFN;
  else if (FUNC0 (dir_lbl, spec))
    usage = DINFO_USAGE_DIR_USE;
  else if (FUNC0 (ind_lbl, spec))
    usage = DINFO_USAGE_IND_USE;

  /* Generics or not? */
  if (FUNC0 (ord_lbl, spec))
    gen = 0;
  else if (FUNC0 (gen_lbl, spec))
    ord = 0;

  /* What allowable environment? */
  if (FUNC0 (none_lbl, spec))
    files = DINFO_STRUCT_FILE_NONE;
  else if (FUNC0 (any_lbl, spec))
    files = DINFO_STRUCT_FILE_ANY;
  else if (FUNC0 (sys_lbl, spec))
    files = DINFO_STRUCT_FILE_SYS;
  else if (FUNC0 (base_lbl, spec))
    files = DINFO_STRUCT_FILE_BASE;
  else
    FUNC1 ("argument %qs to %<-femit-struct-debug-detailed%> not recognized",
           spec);

  /* Effect the specification. */
  if (usage == DINFO_USAGE_NUM_ENUMS)
    {
      if (ord)
        {
          debug_struct_ordinary[DINFO_USAGE_DFN] = files;
          debug_struct_ordinary[DINFO_USAGE_DIR_USE] = files;
          debug_struct_ordinary[DINFO_USAGE_IND_USE] = files;
        }
      if (gen)
        {
          debug_struct_generic[DINFO_USAGE_DFN] = files;
          debug_struct_generic[DINFO_USAGE_DIR_USE] = files;
          debug_struct_generic[DINFO_USAGE_IND_USE] = files;
        }
    }
  else
    {
      if (ord)
        debug_struct_ordinary[usage] = files;
      if (gen)
        debug_struct_generic[usage] = files;
    }

  if (*spec == ',')
    FUNC2 (spec+1);
  else
    {
      /* No more -femit-struct-debug-detailed specifications.
         Do final checks. */
      if (*spec != '\0')
	FUNC1 ("argument %qs to %<-femit-struct-debug-detailed%> unknown",
               spec);
      if (debug_struct_ordinary[DINFO_USAGE_DIR_USE]
		< debug_struct_ordinary[DINFO_USAGE_IND_USE]
	  || debug_struct_generic[DINFO_USAGE_DIR_USE]
		< debug_struct_generic[DINFO_USAGE_IND_USE])
	FUNC1 ("%<-femit-struct-debug-detailed=dir:...%> must allow at least"
               " as much as %<-femit-struct-debug-detailed=ind:...%>");
    }
}
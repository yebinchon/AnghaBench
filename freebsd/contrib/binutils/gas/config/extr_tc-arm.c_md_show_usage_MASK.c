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
struct arm_option_table {char* option; char* help; } ;
struct arm_long_option_table {char* option; char* help; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 char* FUNC0 (char*) ; 
 struct arm_long_option_table* arm_long_opts ; 
 struct arm_option_table* arm_opts ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 

void
FUNC2 (FILE * fp)
{
  struct arm_option_table *opt;
  struct arm_long_option_table *lopt;

  FUNC1 (fp, FUNC0(" ARM-specific assembler options:\n"));

  for (opt = arm_opts; opt->option != NULL; opt++)
    if (opt->help != NULL)
      FUNC1 (fp, "  -%-23s%s\n", opt->option, FUNC0(opt->help));

  for (lopt = arm_long_opts; lopt->option != NULL; lopt++)
    if (lopt->help != NULL)
      FUNC1 (fp, "  -%s%s\n", lopt->option, FUNC0(lopt->help));

#ifdef OPTION_EB
  fprintf (fp, _("\
  -EB                     assemble code for a big-endian cpu\n"));
#endif

#ifdef OPTION_EL
  fprintf (fp, _("\
  -EL                     assemble code for a little-endian cpu\n"));
#endif
}
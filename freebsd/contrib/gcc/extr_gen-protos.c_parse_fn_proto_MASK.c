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
struct fn_decl {char* fname; char* rtype; char* params; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char) ; 
 scalar_t__ FUNC1 (char) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*,...) ; 
 char* progname ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC3 (char*,char*,int) ; 
 scalar_t__ verbose ; 

__attribute__((used)) static int
FUNC4 (char *start, char *end, struct fn_decl *fn)
{
  char *ptr;
  int param_nesting = 1;
  char *param_start, *param_end, *decl_start, *name_start, *name_end;

  ptr = end - 1;
  while (*ptr == ' ' || *ptr == '\t') ptr--;
  if (*ptr-- != ';')
    {
      FUNC2 (stderr, "Funny input line: %s\n", start);
      return 0;
    }
  while (*ptr == ' ' || *ptr == '\t') ptr--;
  if (*ptr != ')')
    {
      FUNC2 (stderr, "Funny input line: %s\n", start);
      return 0;
    }
  param_end = ptr;
  for (;;)
    {
      int c = *--ptr;
      if (c == '(' && --param_nesting == 0)
	break;
      else if (c == ')')
	param_nesting++;
    }
  param_start = ptr+1;

  ptr--;
  while (*ptr == ' ' || *ptr == '\t') ptr--;

  if (!FUNC0 ((unsigned char)*ptr))
    {
      if (verbose)
	FUNC2 (stderr, "%s: Can't handle this complex prototype: %s\n",
		 progname, start);
      return 0;
    }
  name_end = ptr+1;

  while (FUNC1 (*ptr))
    --ptr;
  name_start = ptr+1;
  while (*ptr == ' ' || *ptr == '\t') ptr--;
  ptr[1] = 0;
  *param_end = 0;
  *name_end = 0;

  decl_start = start;
  if (FUNC3 (decl_start, "typedef ", 8) == 0)
    return 0;
  if (FUNC3 (decl_start, "extern ", 7) == 0)
    decl_start += 7;

  fn->fname = name_start;
  fn->rtype = decl_start;
  fn->params = param_start;
  return 1;
}
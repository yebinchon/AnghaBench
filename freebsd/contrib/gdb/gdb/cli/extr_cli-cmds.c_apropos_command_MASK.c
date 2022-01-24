#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct cmd_list_element {int dummy; } ;
struct TYPE_5__ {char* fastmap; } ;
typedef  TYPE_1__ regex_t ;

/* Variables and functions */
 int /*<<< orphan*/  REG_ICASE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct cmd_list_element*,TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  gdb_stdout ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ *,char*,int) ; 
 char* FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

void 
FUNC7 (char *searchstr, int from_tty)
{
  extern struct cmd_list_element *cmdlist; /*This is the main command list*/
  regex_t pattern;
  char *pattern_fastmap;
  char errorbuffer[512];
  pattern_fastmap = FUNC5 (256, sizeof (char));
  if (searchstr == NULL)
      FUNC1("REGEXP string is empty");

  if (FUNC3(&pattern,searchstr,REG_ICASE) == 0)
    {
      pattern.fastmap=pattern_fastmap;
      FUNC2(&pattern);
      FUNC0 (gdb_stdout,cmdlist,&pattern,"");
    }
  else
    {
      FUNC4(FUNC3(&pattern,searchstr,REG_ICASE),NULL,errorbuffer,512);
      FUNC1("Error in regular expression:%s",errorbuffer);
    }
  FUNC6 (pattern_fastmap);
}
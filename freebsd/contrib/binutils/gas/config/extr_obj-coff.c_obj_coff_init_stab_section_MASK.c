#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* segT ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char**,unsigned int*) ; 
 char* FUNC1 (int) ; 
 unsigned int FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 char* FUNC9 (scalar_t__) ; 

void
FUNC10 (segT seg)
{
  char *file;
  char *p;
  char *stabstr_name;
  unsigned int stroff;

  /* Make space for this first symbol.  */
  p = FUNC1 (12);
  /* Zero it out.  */
  FUNC5 (p, 0, 12);
  FUNC0 (&file, (unsigned int *) NULL);
  stabstr_name = FUNC9 (FUNC8 (seg->name) + 4);
  FUNC7 (stabstr_name, seg->name);
  FUNC6 (stabstr_name, "str");
  stroff = FUNC2 (file, stabstr_name);
  FUNC3 (stroff == 1);
  FUNC4 (p, stroff, 4);
}
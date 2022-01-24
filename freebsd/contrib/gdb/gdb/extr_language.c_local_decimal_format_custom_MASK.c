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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 char* FUNC1 () ; 
 char* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 

char *
FUNC5 (char *pre)
{
  static char form[50];

  FUNC4 (form, FUNC0 ());
  FUNC3 (form, "%");
  FUNC3 (form, pre);
  FUNC3 (form, FUNC1 ());
  FUNC3 (form, FUNC2 ());
  return form;
}
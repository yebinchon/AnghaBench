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
struct ui_file {int dummy; } ;
struct type {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct type*,int) ; 
 scalar_t__ FUNC1 (struct type*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct type*,int) ; 
 int FUNC3 (struct type*) ; 
 int /*<<< orphan*/  FUNC4 (struct ui_file*,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,struct ui_file*) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7 (struct ui_file *stream, struct type *type)
{
  char *name;
  int i;

  for (i = 0; i < FUNC3 (type); i++)
    {
      FUNC5 (i == 0 ? ": " : ", ", stream);
      FUNC4 (stream, "%s%s ",
			FUNC0 (type, i) ? "public" : "private",
			FUNC1 (type, i) ? " virtual" : "");
      name = FUNC6 (FUNC2 (type, i));
      FUNC4 (stream, "%s", name ? name : "(null)");
    }
  if (i > 0)
    {
      FUNC5 (" ", stream);
    }
}
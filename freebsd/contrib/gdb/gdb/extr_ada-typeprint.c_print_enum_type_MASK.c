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
 int /*<<< orphan*/  QUIT ; 
 int FUNC0 (struct type*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct type*,int) ; 
 int FUNC2 (struct type*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ui_file*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct ui_file*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static void
FUNC7 (struct type *type, struct ui_file *stream)
{
  int len = FUNC2 (type);
  int i, lastval;

  FUNC4 (stream, "(");
  FUNC6 (" ");

  lastval = 0;
  for (i = 0; i < len; i++)
    {
      QUIT;
      if (i)
	FUNC4 (stream, ", ");
      FUNC6 ("    ");
      FUNC5 (FUNC3 (FUNC1 (type, i)), stream);
      if (lastval != FUNC0 (type, i))
	{
	  FUNC4 (stream, " => %d", FUNC0 (type, i));
	  lastval = FUNC0 (type, i);
	}
      lastval += 1;
    }
  FUNC4 (stream, ")");
}
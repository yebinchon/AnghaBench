#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char* dir; int /*<<< orphan*/ * args; void* main; int /*<<< orphan*/  key; } ;
typedef  TYPE_1__ file ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/ * FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  temporary_firstobj ; 
 int /*<<< orphan*/  temporary_obstack ; 
 int tlink_verbose ; 

__attribute__((used)) static void
FUNC9 (file *f)
{
  char c;
  FILE *stream = FUNC2 (f->key, "r");

  if (tlink_verbose >= 2)
    FUNC3 (stderr, "%s", FUNC0("collect: reading %s\n"), f->key);

  while (FUNC5 (stream, "%c ", &c) == 1)
    {
      switch (c)
	{
	case 'A':
	  f->args = FUNC8 (stream);
	  break;
	case 'D':
	  f->dir = FUNC8 (stream);
	  break;
	case 'M':
	  f->main = FUNC8 (stream);
	  break;
	case 'P':
	  FUNC4 (stream, f, 2);
	  break;
	case 'C':
	  FUNC4 (stream, f, 1);
	  break;
	case 'O':
	  FUNC4 (stream, f, 0);
	  break;
	}
      FUNC7 (&temporary_obstack, temporary_firstobj);
    }
  FUNC1 (stream);
  if (f->args == NULL)
    f->args = FUNC6 ("COLLECT_GCC_OPTIONS");
  if (f->dir == NULL)
    f->dir = ".";
}
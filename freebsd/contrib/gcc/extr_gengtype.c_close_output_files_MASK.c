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
typedef  TYPE_1__* outf_p ;
struct TYPE_3__ {size_t bufused; scalar_t__* buf; int /*<<< orphan*/  name; struct TYPE_3__* next; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int EOF ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC4 (scalar_t__*,int,size_t,int /*<<< orphan*/ *) ; 
 TYPE_1__* output_files ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void
FUNC6 (void)
{
  outf_p of;

  for (of = output_files; of; of = of->next)
    {
      FILE * newfile;

      newfile = FUNC3 (of->name, "r");
      if (newfile != NULL )
	{
	  int no_write_p;
	  size_t i;

	  for (i = 0; i < of->bufused; i++)
	    {
	      int ch;
	      ch = FUNC2 (newfile);
	      if (ch == EOF || ch != (unsigned char) of->buf[i])
		break;
	    }
	  no_write_p = i == of->bufused && FUNC2 (newfile) == EOF;
	  FUNC1 (newfile);

	  if (no_write_p)
	    continue;
	}

      newfile = FUNC3 (of->name, "w");
      if (newfile == NULL)
	{
	  FUNC5 ("opening output file");
	  FUNC0 (1);
	}
      if (FUNC4 (of->buf, 1, of->bufused, newfile) != of->bufused)
	{
	  FUNC5 ("writing output file");
	  FUNC0 (1);
	}
      if (FUNC1 (newfile) != 0)
	{
	  FUNC5 ("closing output file");
	  FUNC0 (1);
	}
    }
}
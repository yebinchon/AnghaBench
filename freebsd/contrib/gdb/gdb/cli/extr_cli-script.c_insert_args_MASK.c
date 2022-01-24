#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {unsigned int count; TYPE_1__* a; } ;
struct TYPE_3__ {int len; char* arg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned int) ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 scalar_t__ FUNC4 (char*) ; 
 TYPE_2__* user_args ; 
 scalar_t__ FUNC5 (unsigned int) ; 

__attribute__((used)) static char *
FUNC6 (char *line)
{
  char *p, *save_line, *new_line;
  unsigned len, i;

  /* First we need to know how much memory to allocate for the new line.  */
  save_line = line;
  len = 0;
  while ((p = FUNC1 (line)))
    {
      len += p - line;
      i = p[4] - '0';

      if (i >= user_args->count)
	{
	  FUNC0 ("Missing argument %d in user function.\n", i);
	  return NULL;
	}
      len += user_args->a[i].len;
      line = p + 5;
    }

  /* Don't forget the tail.  */
  len += FUNC4 (line);

  /* Allocate space for the new line and fill it in.  */
  new_line = (char *) FUNC5 (len + 1);
  if (new_line == NULL)
    return NULL;

  /* Restore pointer to beginning of old line.  */
  line = save_line;

  /* Save pointer to beginning of new line.  */
  save_line = new_line;

  while ((p = FUNC1 (line)))
    {
      int i, len;

      FUNC2 (new_line, line, p - line);
      new_line += p - line;
      i = p[4] - '0';

      len = user_args->a[i].len;
      if (len)
	{
	  FUNC2 (new_line, user_args->a[i].arg, len);
	  new_line += len;
	}
      line = p + 5;
    }
  /* Don't forget the tail.  */
  FUNC3 (new_line, line);

  /* Return a pointer to the beginning of the new line.  */
  return save_line;
}
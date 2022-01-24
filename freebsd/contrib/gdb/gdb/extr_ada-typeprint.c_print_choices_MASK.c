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
typedef  int /*<<< orphan*/  LONGEST ;

/* Variables and functions */
 char* FUNC0 (struct type*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct type*,int /*<<< orphan*/ ,struct ui_file*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct ui_file*,char*) ; 

__attribute__((used)) static void
FUNC4 (struct type *type, int field_num, struct ui_file *stream,
	       struct type *val_type)
{
  int have_output;
  int p;
  const char *name = FUNC0 (type, field_num);

  have_output = 0;

  /* Skip over leading 'V': NOTE soon to be obsolete. */
  if (name[0] == 'V')
    {
      if (!FUNC2 (name, 1, NULL, &p))
	goto Huh;
    }
  else
    p = 0;

  while (1)
    {
      switch (name[p])
	{
	default:
	  return;
	case 'S':
	case 'R':
	case 'O':
	  if (have_output)
	    FUNC3 (stream, " | ");
	  have_output = 1;
	  break;
	}

      switch (name[p])
	{
	case 'S':
	  {
	    LONGEST W;
	    if (!FUNC2 (name, p + 1, &W, &p))
	      goto Huh;
	    FUNC1 (val_type, W, stream);
	    break;
	  }
	case 'R':
	  {
	    LONGEST L, U;
	    if (!FUNC2 (name, p + 1, &L, &p)
		|| name[p] != 'T' || !FUNC2 (name, p + 1, &U, &p))
	      goto Huh;
	    FUNC1 (val_type, L, stream);
	    FUNC3 (stream, " .. ");
	    FUNC1 (val_type, U, stream);
	    break;
	  }
	case 'O':
	  FUNC3 (stream, "others");
	  p += 1;
	  break;
	}
    }

Huh:
  FUNC3 (stream, "??");

}
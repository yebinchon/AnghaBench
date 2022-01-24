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
struct mode_data {int precision; char* name; char* line; struct mode_data* component; int /*<<< orphan*/  file; struct mode_data* next; } ;
typedef  enum mode_class { ____Placeholder_mode_class } mode_class ;

/* Variables and functions */
 int MODE_FLOAT ; 
 int MODE_RANDOM ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char*,char*) ; 
 struct mode_data** modes ; 
 struct mode_data* FUNC2 (int,int /*<<< orphan*/ ,char const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char*) ; 
 char* FUNC4 (char*,char) ; 
 int FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static void
FUNC8 (enum mode_class cl,
		    const char *file, unsigned int line)
{
  struct mode_data *m;
  struct mode_data *c;
  char buf[8];
  enum mode_class cclass = FUNC0 (cl);

  if (cclass == MODE_RANDOM)
    return;

  for (m = modes[cl]; m; m = m->next)
    {
      /* Skip BImode.  FIXME: BImode probably shouldn't be MODE_INT.  */
      if (m->precision == 1)
	continue;

      if (FUNC5 (m->name) >= sizeof buf)
	{
	  FUNC1 ("%s:%d:mode name \"%s\" is too long",
		 m->file, m->line, m->name);
	  continue;
	}

      /* Float complex modes are named SCmode, etc.
	 Int complex modes are named CSImode, etc.
         This inconsistency should be eliminated.  */
      if (cl == MODE_FLOAT)
	{
	  char *p, *q = 0;
	  FUNC6 (buf, m->name, sizeof buf);
	  p = FUNC4 (buf, 'F');
	  if (p == 0)
	    q = FUNC4 (buf, 'D');
	  if (p == 0 && q == 0)
	    {
	      FUNC1 ("%s:%d: float mode \"%s\" has no 'F' or 'D'",
		     m->file, m->line, m->name);
	      continue;
	    }

	  if (p != 0)
	    *p = 'C';
	  else
	    FUNC3 (buf, sizeof buf, "C%s", m->name);
	}
      else
	FUNC3 (buf, sizeof buf, "C%s", m->name);

      c = FUNC2 (cclass, FUNC7 (buf), file, line);
      c->component = m;
    }
}
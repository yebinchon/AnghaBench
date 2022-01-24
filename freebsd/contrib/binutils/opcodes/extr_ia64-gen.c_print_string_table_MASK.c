#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {char* s; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 TYPE_1__** string_table ; 
 int FUNC4 (char*) ; 
 int strtablen ; 

__attribute__((used)) static void
FUNC5 (void)
{
  int x;
  char lbuf[80], buf[80];
  int blen = 0;

  FUNC1 ("static const char * const ia64_strings[] = {\n");
  lbuf[0] = '\0';

  for (x = 0; x < strtablen; x++)
    {
      int len;
      
      if (FUNC4 (string_table[x]->s) > 75)
	FUNC0 ();

      FUNC2 (buf, " \"%s\",", string_table[x]->s);
      len = FUNC4 (buf);

      if ((blen + len) > 75)
	{
	  FUNC1 (" %s\n", lbuf);
	  lbuf[0] = '\0';
	  blen = 0;
	}
      FUNC3 (lbuf, buf);
      blen += len;
    }

  if (blen > 0)
    FUNC1 (" %s\n", lbuf);

  FUNC1 ("};\n\n");
}
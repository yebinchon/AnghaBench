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
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char*,char*) ; 
 char* FUNC6 (char*,char**) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 char* FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int FUNC10 (char*) ; 
 char* FUNC11 (char*,char*) ; 

__attribute__((used)) static void
FUNC12 (void)
{
  FILE *fp = FUNC5 ("i386-reg.tbl", "r");
  char buf[2048];
  char *str, *p, *last;
  char *reg_name, *reg_type, *reg_flags, *reg_num;

  if (fp == NULL)
    FUNC2 (FUNC0("can't find i386-reg.tbl for reading\n"));

  FUNC7 ("\n/* i386 register table.  */\n\n");
  FUNC7 ("const reg_entry i386_regtab[] =\n{\n");

  while (!FUNC3 (fp))
    {
      if (FUNC4 (buf, sizeof (buf), fp) == NULL)
	break;

      p = FUNC8 (buf);

      /* Skip comments.  */
      str = FUNC11 (p, "//");
      if (str != NULL)
	str[0] = '\0';

      /* Remove trailing white spaces.  */
      FUNC9 (p);

      switch (p[0])
	{
	case '#':
	  FUNC7 ("%s\n", p);
	case '\0':
	  continue;
	  break;
	default:
	  break;
	}

      last = p + FUNC10 (p);

      /* Find reg_name.  */
      reg_name = FUNC6 (p, &str);

      if (str >= last)
	FUNC1 ();

      /* Find reg_type.  */
      reg_type = FUNC6 (str, &str);

      if (str >= last)
	FUNC1 ();

      /* Find reg_flags.  */
      reg_flags = FUNC6 (str, &str);

      if (str >= last)
	FUNC1 ();

      /* Find reg_num.  */
      reg_num = FUNC6 (str, &str);

      FUNC7 ("  { \"%s\", %s, %s, %s },\n",
	      reg_name, reg_type, reg_flags, reg_num);
    }

  FUNC7 ("};\n");

  FUNC7 ("\nconst unsigned int i386_regtab_size = ARRAY_SIZE (i386_regtab);\n");
}
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
typedef  int flagword ;
typedef  int /*<<< orphan*/  bfd ;
typedef  int /*<<< orphan*/  asection ;

/* Variables and functions */
 int BSF_FUNCTION ; 
 scalar_t__ FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  DRECTVE_SECTION_NAME ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ add_stdcall_alias ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,int) ; 
 char* FUNC10 (char*,char) ; 
 char* FUNC11 (int) ; 
 char* FUNC12 (char*) ; 

__attribute__((used)) static void
FUNC13 (bfd *abfd)
{
  asection * s;
  int        size;
  char *     buf;
  char *     p;
  char *     e;

  /* Look for .drectve's */
  s = FUNC3 (abfd, DRECTVE_SECTION_NAME);

  if (s == NULL)
    return;

  size = FUNC5 (s);
  buf  = FUNC11 (size);

  FUNC4 (abfd, s, buf, 0, size);

  /* xgettext:c-format */
  FUNC8 (FUNC1("Sucking in info from %s section in %s"),
	  DRECTVE_SECTION_NAME, FUNC2 (abfd));

  /* Search for -export: strings. The exported symbols can optionally
     have type tags (eg., -export:foo,data), so handle those as well.
     Currently only data tag is supported.  */
  p = buf;
  e = buf + size;
  while (p < e)
    {
      if (p[0] == '-'
	  && FUNC0 (p, "-export:"))
	{
	  char * name;
	  char * c;
	  flagword flags = BSF_FUNCTION;

	  p += 8;
	  name = p;
	  while (p < e && *p != ',' && *p != ' ' && *p != '-')
	    p++;
	  c = FUNC11 (p - name + 1);
	  FUNC9 (c, name, p - name);
	  c[p - name] = 0;
	  if (p < e && *p == ',')       /* found type tag.  */
	    {
	      char *tag_start = ++p;
	      while (p < e && *p != ' ' && *p != '-')
		p++;
	      if (FUNC0 (tag_start, "data"))
		flags &= ~BSF_FUNCTION;
	    }

	  /* FIXME: The 5th arg is for the `constant' field.
	     What should it be?  Not that it matters since it's not
	     currently useful.  */
	  FUNC6 (c, 0, -1, 0, 0, ! (flags & BSF_FUNCTION), 0);

	  if (add_stdcall_alias && FUNC10 (c, '@'))
	    {
	      int lead_at = (*c == '@') ;
	      char *exported_name = FUNC12 (c + lead_at);
	      char *atsym = FUNC10 (exported_name, '@');
	      *atsym = '\0';
	      /* Note: stdcall alias symbols can never be data.  */
	      FUNC6 (exported_name, FUNC12 (c), -1, 0, 0, 0, 0);
	    }
	}
      else
	p++;
    }
  FUNC7 (buf);
}
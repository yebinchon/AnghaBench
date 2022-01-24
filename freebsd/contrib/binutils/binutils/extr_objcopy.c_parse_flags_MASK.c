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
typedef  int /*<<< orphan*/  flagword ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SEC_ALLOC ; 
 int /*<<< orphan*/  SEC_CODE ; 
 int /*<<< orphan*/  SEC_COFF_SHARED ; 
 int /*<<< orphan*/  SEC_DATA ; 
 int /*<<< orphan*/  SEC_DEBUGGING ; 
 int /*<<< orphan*/  SEC_HAS_CONTENTS ; 
 int /*<<< orphan*/  SEC_LOAD ; 
 int /*<<< orphan*/  SEC_NEVER_LOAD ; 
 int /*<<< orphan*/  SEC_NO_FLAGS ; 
 int /*<<< orphan*/  SEC_READONLY ; 
 int /*<<< orphan*/  SEC_ROM ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC4 (char const*,char) ; 
 int FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,int) ; 
 char* FUNC7 (int) ; 

__attribute__((used)) static flagword
FUNC8 (const char *s)
{
  flagword ret;
  const char *snext;
  int len;

  ret = SEC_NO_FLAGS;

  do
    {
      snext = FUNC4 (s, ',');
      if (snext == NULL)
	len = FUNC5 (s);
      else
	{
	  len = snext - s;
	  ++snext;
	}

      if (0) ;
#define PARSE_FLAG(fname,fval) \
  else if (strncasecmp (fname, s, len) == 0) ret |= fval
      PARSE_FLAG ("alloc", SEC_ALLOC);
      PARSE_FLAG ("load", SEC_LOAD);
      PARSE_FLAG ("noload", SEC_NEVER_LOAD);
      PARSE_FLAG ("readonly", SEC_READONLY);
      PARSE_FLAG ("debug", SEC_DEBUGGING);
      PARSE_FLAG ("code", SEC_CODE);
      PARSE_FLAG ("data", SEC_DATA);
      PARSE_FLAG ("rom", SEC_ROM);
      PARSE_FLAG ("share", SEC_COFF_SHARED);
      PARSE_FLAG ("contents", SEC_HAS_CONTENTS);
#undef PARSE_FLAG
      else
	{
	  char *copy;

	  copy = FUNC7 (len + 1);
	  FUNC6 (copy, s, len);
	  copy[len] = '\0';
	  FUNC3 (FUNC1("unrecognized section flag `%s'"), copy);
	  FUNC2 (FUNC1("supported flags: %s"),
		 "alloc, load, noload, readonly, debug, code, data, rom, share, contents");
	}

      s = snext;
    }
  while (s != NULL);

  return ret;
}
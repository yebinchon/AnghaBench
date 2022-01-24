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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char**) ; 
 scalar_t__ FUNC6 (int) ; 
 scalar_t__ FUNC7 (char*,int) ; 

char **
FUNC8 (const char *enumlist[],
		  char *text,
		  char *word)
{
  char **matchlist;
  int sizeof_matchlist;
  int matches;
  int textlen = FUNC2 (text);
  int i;
  const char *name;

  sizeof_matchlist = 10;
  matchlist = (char **) FUNC6 (sizeof_matchlist * sizeof (char *));
  matches = 0;

  for (i = 0; (name = enumlist[i]) != NULL; i++)
    if (FUNC3 (name, text, textlen) == 0)
      {
	if (matches == sizeof_matchlist)
	  {
	    sizeof_matchlist *= 2;
	    matchlist = (char **) FUNC7 ((char *) matchlist,
					    (sizeof_matchlist
					     * sizeof (char *)));
	  }

	matchlist[matches] = (char *)
	  FUNC6 (FUNC2 (word) + FUNC2 (name) + 1);
	if (word == text)
	  FUNC1 (matchlist[matches], name);
	else if (word > text)
	  {
	    /* Return some portion of name.  */
	    FUNC1 (matchlist[matches], name + (word - text));
	  }
	else
	  {
	    /* Return some of text plus name.  */
	    FUNC4 (matchlist[matches], word, text - word);
	    matchlist[matches][text - word] = '\0';
	    FUNC0 (matchlist[matches], name);
	  }
	++matches;
      }

  if (matches == 0)
    {
      FUNC5 (matchlist);
      matchlist = 0;
    }
  else
    {
      matchlist = (char **) FUNC7 ((char *) matchlist, ((matches + 1)
							* sizeof (char *)));
      matchlist[matches] = (char *) 0;
    }

  return matchlist;
}
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
struct interp {char* name; struct interp* next; } ;

/* Variables and functions */
 struct interp* interp_list ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char**) ; 
 scalar_t__ FUNC6 (int) ; 
 scalar_t__ FUNC7 (char*,int) ; 

__attribute__((used)) static char **
FUNC8 (char *text, char *word)
{
  int alloced = 0;
  int textlen;
  int num_matches;
  char **matches;
  struct interp *interp;

  /* We expect only a very limited number of interpreters, so just
     allocate room for all of them. */
  for (interp = interp_list; interp != NULL; interp = interp->next)
    ++alloced;
  matches = (char **) FUNC6 (alloced * sizeof (char *));

  num_matches = 0;
  textlen = FUNC2 (text);
  for (interp = interp_list; interp != NULL; interp = interp->next)
    {
      if (FUNC3 (interp->name, text, textlen) == 0)
	{
	  matches[num_matches] =
	    (char *) FUNC6 (FUNC2 (word) + FUNC2 (interp->name) + 1);
	  if (word == text)
	    FUNC1 (matches[num_matches], interp->name);
	  else if (word > text)
	    {
	      /* Return some portion of interp->name */
	      FUNC1 (matches[num_matches], interp->name + (word - text));
	    }
	  else
	    {
	      /* Return some of text plus interp->name */
	      FUNC4 (matches[num_matches], word, text - word);
	      matches[num_matches][text - word] = '\0';
	      FUNC0 (matches[num_matches], interp->name);
	    }
	  ++num_matches;
	}
    }

  if (num_matches == 0)
    {
      FUNC5 (matches);
      matches = NULL;
    }
  else if (num_matches < alloced)
    {
      matches = (char **) FUNC7 ((char *) matches, ((num_matches + 1)
						       * sizeof (char *)));
      matches[num_matches] = NULL;
    }

  return matches;
}
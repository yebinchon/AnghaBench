#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int debugging; char* line_contents; unsigned int line; char* message; scalar_t__ hll_line; int /*<<< orphan*/ * hll_file; int /*<<< orphan*/  edict; struct TYPE_4__* next; int /*<<< orphan*/  file; int /*<<< orphan*/  frag; } ;
typedef  TYPE_1__ list_info_type ;
typedef  int /*<<< orphan*/  file_info_type ;

/* Variables and functions */
 int /*<<< orphan*/  EDICT_NONE ; 
 int /*<<< orphan*/  FUNC0 (unsigned char) ; 
 int LISTING_NODEBUG ; 
 char* FUNC1 (char*) ; 
 scalar_t__ absolute_section ; 
 int /*<<< orphan*/  FUNC2 (char**,unsigned int*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  frag_now ; 
 TYPE_1__* head ; 
 char* input_line_pointer ; 
 int /*<<< orphan*/ * is_end_of_line ; 
 int listing ; 
 TYPE_1__* listing_tail ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ now_seg ; 
 char* FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 scalar_t__ FUNC7 (char const*,char*,int) ; 
 void* FUNC8 (int) ; 

void
FUNC9 (char *ps)
{
  char *file;
  unsigned int line;
  static unsigned int last_line = 0xffff;
  static char *last_file = NULL;
  list_info_type *new = NULL;

  if (listing == 0)
    return;

  if (now_seg == absolute_section)
    return;

#ifdef OBJ_ELF
  /* In ELF, anything in a section beginning with .debug or .line is
     considered to be debugging information.  This includes the
     statement which switches us into the debugging section, which we
     can only set after we are already in the debugging section.  */
  if ((listing & LISTING_NODEBUG) != 0
      && listing_tail != NULL
      && ! listing_tail->debugging)
    {
      const char *segname;

      segname = segment_name (now_seg);
      if (strncmp (segname, ".debug", sizeof ".debug" - 1) == 0
	  || strncmp (segname, ".line", sizeof ".line" - 1) == 0)
	listing_tail->debugging = 1;
    }
#endif

  FUNC2 (&file, &line);
  if (ps == NULL)
    {
      if (line == last_line
	  && !(last_file && file && FUNC6 (file, last_file)))
	return;

      new = (list_info_type *) FUNC8 (sizeof (list_info_type));

      /* Detect if we are reading from stdin by examining the file
	 name returned by as_where().

	 [FIXME: We rely upon the name in the strcmp below being the
	 same as the one used by input_scrub_new_file(), if that is
	 not true, then this code will fail].

	 If we are reading from stdin, then we need to save each input
	 line here (assuming of course that we actually have a line of
	 input to read), so that it can be displayed in the listing
	 that is produced at the end of the assembly.  */
      if (FUNC6 (file, FUNC1("{standard input}")) == 0
	  && input_line_pointer != NULL)
	{
	  char *copy;
	  int len;
	  int seen_quote = 0;

	  for (copy = input_line_pointer - 1;
	       *copy && (seen_quote
			 || (! is_end_of_line [(unsigned char) *copy]));
	       copy++)
	    if (*copy == '"' && copy[-1] != '\\')
	      seen_quote = ! seen_quote;

	  len = (copy - input_line_pointer) + 2;

	  copy = FUNC8 (len);

	  if (copy != NULL)
	    {
	      char *src = input_line_pointer - 1;
	      char *dest = copy;

	      while (--len)
		{
		  unsigned char c = *src++;

		  /* Omit control characters in the listing.  */
		  if (!FUNC0 (c))
		    *dest++ = c;
		}

	      *dest = 0;
	    }

	  new->line_contents = copy;
	}
      else
	new->line_contents = NULL;
    }
  else
    {
      new = FUNC8 (sizeof (list_info_type));
      new->line_contents = ps;
    }

  last_line = line;
  last_file = file;

  FUNC4 ();

  if (listing_tail)
    listing_tail->next = new;
  else
    head = new;

  listing_tail = new;

  new->frag = frag_now;
  new->line = line;
  new->file = FUNC3 (file);
  new->next = (list_info_type *) NULL;
  new->message = (char *) NULL;
  new->edict = EDICT_NONE;
  new->hll_file = (file_info_type *) NULL;
  new->hll_line = 0;
  new->debugging = 0;

  FUNC4 ();

#ifdef OBJ_ELF
  /* In ELF, anything in a section beginning with .debug or .line is
     considered to be debugging information.  */
  if ((listing & LISTING_NODEBUG) != 0)
    {
      const char *segname;

      segname = segment_name (now_seg);
      if (strncmp (segname, ".debug", sizeof ".debug" - 1) == 0
	  || strncmp (segname, ".line", sizeof ".line" - 1) == 0)
	new->debugging = 1;
    }
#endif
}
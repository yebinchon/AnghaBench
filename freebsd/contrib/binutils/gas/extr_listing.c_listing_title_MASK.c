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
struct TYPE_2__ {char* edict_arg; int /*<<< orphan*/  edict; } ;

/* Variables and functions */
 int /*<<< orphan*/  EDICT_SBTTL ; 
 int /*<<< orphan*/  EDICT_TITLE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 char* input_line_pointer ; 
 int* is_end_of_line ; 
 scalar_t__ listing ; 
 TYPE_1__* listing_tail ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,unsigned int) ; 
 char* FUNC5 (unsigned int) ; 

void
FUNC6 (int depth)
{
  int quoted;
  char *start;
  char *ttl;
  unsigned int length;

  FUNC0 ();
  if (*input_line_pointer != '\"')
    quoted = 0;
  else
    {
      quoted = 1;
      ++input_line_pointer;
    }

  start = input_line_pointer;

  while (*input_line_pointer)
    {
      if (quoted
	  ? *input_line_pointer == '\"'
	  : is_end_of_line[(unsigned char) *input_line_pointer])
	{
	  if (listing)
	    {
	      length = input_line_pointer - start;
	      ttl = FUNC5 (length + 1);
	      FUNC4 (ttl, start, length);
	      ttl[length] = 0;
	      listing_tail->edict = depth ? EDICT_SBTTL : EDICT_TITLE;
	      listing_tail->edict_arg = ttl;
	    }
	  if (quoted)
	    input_line_pointer++;
	  FUNC3 ();
	  return;
	}
      else if (*input_line_pointer == '\n')
	{
	  FUNC2 (FUNC1("new line in title"));
	  FUNC3 ();
	  return;
	}
      else
	{
	  input_line_pointer++;
	}
    }
}
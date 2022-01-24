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
struct match {int* with; int* commutative; int* early_clobber; int /*<<< orphan*/ * use; } ;
typedef  int /*<<< orphan*/  rtx ;
struct TYPE_2__ {int n_operands; char** constraints; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char,char const*) ; 
 int MAX_RECOG_OPERANDS ; 
 int /*<<< orphan*/  READ ; 
 int /*<<< orphan*/  READWRITE ; 
 int /*<<< orphan*/  FUNC2 (unsigned char,char const*) ; 
 int /*<<< orphan*/  WRITE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_1__ recog_data ; 
 unsigned long FUNC5 (char const*,char**,int) ; 
 int which_alternative ; 

__attribute__((used)) static int
FUNC6 (rtx insn, struct match *matchp)
{
  int likely_spilled[MAX_RECOG_OPERANDS];
  int op_no;
  int any_matches = 0;

  FUNC4 (insn);
  if (! FUNC3 (0))
    return 0;

  /* Must initialize this before main loop, because the code for
     the commutative case may set matches for operands other than
     the current one.  */
  for (op_no = recog_data.n_operands; --op_no >= 0; )
    matchp->with[op_no] = matchp->commutative[op_no] = -1;

  for (op_no = 0; op_no < recog_data.n_operands; op_no++)
    {
      const char *p;
      char c;
      int i = 0;

      p = recog_data.constraints[op_no];

      likely_spilled[op_no] = 0;
      matchp->use[op_no] = READ;
      matchp->early_clobber[op_no] = 0;
      if (*p == '=')
	matchp->use[op_no] = WRITE;
      else if (*p == '+')
	matchp->use[op_no] = READWRITE;

      for (;*p && i < which_alternative; p++)
	if (*p == ',')
	  i++;

      while ((c = *p) != '\0' && c != ',')
	{
	  switch (c)
	    {
	    case '=':
	      break;
	    case '+':
	      break;
	    case '&':
	      matchp->early_clobber[op_no] = 1;
	      break;
	    case '%':
	      matchp->commutative[op_no] = op_no + 1;
	      matchp->commutative[op_no + 1] = op_no;
	      break;

	    case '0': case '1': case '2': case '3': case '4':
	    case '5': case '6': case '7': case '8': case '9':
	      {
		char *end;
		unsigned long match_ul = FUNC5 (p, &end, 10);
		int match = match_ul;

		p = end;

		if (match < op_no && likely_spilled[match])
		  continue;
		matchp->with[op_no] = match;
		any_matches = 1;
		if (matchp->commutative[op_no] >= 0)
		  matchp->with[matchp->commutative[op_no]] = match;
	      }
	    continue;

	  case 'a': case 'b': case 'c': case 'd': case 'e': case 'f': case 'h':
	  case 'j': case 'k': case 'l': case 'p': case 'q': case 't': case 'u':
	  case 'v': case 'w': case 'x': case 'y': case 'z': case 'A': case 'B':
	  case 'C': case 'D': case 'W': case 'Y': case 'Z':
	    if (FUNC0 (FUNC2 ((unsigned char) c, p) ))
	      likely_spilled[op_no] = 1;
	    break;
	  }
	  p += FUNC1 (c, p);
	}
    }
  return any_matches;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {unsigned char* text; int len; } ;
struct TYPE_8__ {TYPE_1__ str; int /*<<< orphan*/  node; } ;
struct TYPE_9__ {int flags; TYPE_2__ val; scalar_t__ type; } ;
typedef  TYPE_3__ cpp_token ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ CPP_FIRST_DIGRAPH ; 
 int DIGRAPH ; 
 int NAMED_OP ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned char* FUNC1 (int /*<<< orphan*/ ) ; 
#define  SPELL_IDENT 131 
#define  SPELL_LITERAL 130 
#define  SPELL_NONE 129 
#define  SPELL_OPERATOR 128 
 unsigned char* FUNC2 (TYPE_3__ const*) ; 
 int FUNC3 (TYPE_3__ const*) ; 
 unsigned char** digraph_spellings ; 
 int /*<<< orphan*/  FUNC4 (unsigned char,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*,unsigned char const*) ; 

void
FUNC8 (const cpp_token *token, FILE *fp)
{
  switch (FUNC3 (token))
    {
    case SPELL_OPERATOR:
      {
	const unsigned char *spelling;
	int c;

	if (token->flags & DIGRAPH)
	  spelling
	    = digraph_spellings[(int) token->type - (int) CPP_FIRST_DIGRAPH];
	else if (token->flags & NAMED_OP)
	  goto spell_ident;
	else
	  spelling = FUNC2 (token);

	c = *spelling;
	do
	  FUNC6 (c, fp);
	while ((c = *++spelling) != '\0');
      }
      break;

    spell_ident:
    case SPELL_IDENT:
      {
	size_t i;
	const unsigned char * name = FUNC1 (token->val.node);
	
	for (i = 0; i < FUNC0 (token->val.node); i++)
	  if (name[i] & ~0x7F)
	    {
	      unsigned char buffer[10];
	      i += FUNC7 (buffer, name + i) - 1;
	      FUNC5 (buffer, 1, 10, fp);
	    }
	  else
	    FUNC4 (FUNC1 (token->val.node)[i], fp);
      }
      break;

    case SPELL_LITERAL:
      FUNC5 (token->val.str.text, 1, token->val.str.len, fp);
      break;

    case SPELL_NONE:
      /* An error, most probably.  */
      break;
    }
}
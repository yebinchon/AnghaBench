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
struct TYPE_7__ {unsigned char* text; size_t len; } ;
struct TYPE_8__ {TYPE_1__ str; int /*<<< orphan*/  node; } ;
struct TYPE_9__ {int flags; TYPE_2__ val; scalar_t__ type; } ;
typedef  TYPE_3__ cpp_token ;
typedef  int /*<<< orphan*/  cpp_reader ;

/* Variables and functions */
 int /*<<< orphan*/  CPP_DL_ICE ; 
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
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,unsigned char*) ; 
 unsigned char** digraph_spellings ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,unsigned char const*) ; 

unsigned char *
FUNC7 (cpp_reader *pfile, const cpp_token *token,
		 unsigned char *buffer, bool forstring)
{
  switch (FUNC3 (token))
    {
    case SPELL_OPERATOR:
      {
	const unsigned char *spelling;
	unsigned char c;

	if (token->flags & DIGRAPH)
	  spelling
	    = digraph_spellings[(int) token->type - (int) CPP_FIRST_DIGRAPH];
	else if (token->flags & NAMED_OP)
	  goto spell_ident;
	else
	  spelling = FUNC2 (token);

	while ((c = *spelling++) != '\0')
	  *buffer++ = c;
      }
      break;

    spell_ident:
    case SPELL_IDENT:
      if (forstring)
	{
	  FUNC5 (buffer, FUNC1 (token->val.node),
		  FUNC0 (token->val.node));
	  buffer += FUNC0 (token->val.node);
	}
      else
	{
	  size_t i;
	  const unsigned char * name = FUNC1 (token->val.node);
	  
	  for (i = 0; i < FUNC0 (token->val.node); i++)
	    if (name[i] & ~0x7F)
	      {
		i += FUNC6 (buffer, name + i) - 1;
		buffer += 10;
	      }
	    else
	      *buffer++ = FUNC1 (token->val.node)[i];
	}
      break;

    case SPELL_LITERAL:
      FUNC5 (buffer, token->val.str.text, token->val.str.len);
      buffer += token->val.str.len;
      break;

    case SPELL_NONE:
      FUNC4 (pfile, CPP_DL_ICE,
		 "unspellable token %s", FUNC2 (token));
      break;
    }

  return buffer;
}
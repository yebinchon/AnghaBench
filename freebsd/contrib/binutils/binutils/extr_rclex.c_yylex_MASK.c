#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  unichar ;
typedef  void* rc_uint_type ;
struct TYPE_7__ {char* s; void* length; } ;
struct TYPE_6__ {int /*<<< orphan*/ * s; void* length; } ;
struct TYPE_5__ {int dword; int /*<<< orphan*/  val; } ;
struct TYPE_8__ {char* s; TYPE_3__ ss; TYPE_2__ suni; int /*<<< orphan*/ * uni; TYPE_1__ i; } ;

/* Variables and functions */
 int BEG ; 
 int BLOCK ; 
 int BLOCKSTRINGFILEINFO ; 
 int BLOCKVARFILEINFO ; 
 int END ; 
 int IGNORED_TOKEN ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int NUMBER ; 
#define  QUOTEDSTRING 130 
 int QUOTEDUNISTRING ; 
#define  SIZEDSTRING 129 
 int SIZEDUNISTRING ; 
#define  STRING 128 
 int /*<<< orphan*/  FUNC3 () ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 char* FUNC5 (void**) ; 
 int /*<<< orphan*/ * FUNC6 (void**) ; 
 int /*<<< orphan*/  rc_lineno ; 
 int /*<<< orphan*/  rcdata_mode ; 
 char FUNC7 () ; 
 int FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 scalar_t__* rclex_tok ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 scalar_t__ rclex_tok_pos ; 
 int FUNC11 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC15 (char*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__*) ; 
 TYPE_4__ yylval ; 

int
FUNC17 (void)
{
  char *s;
  unichar *us;
  rc_uint_type length;
  int ch;

  /* Make sure that rclex_tok is initialized.  */
  if (! rclex_tok)
    FUNC10 (-1);

  do
    {
      do
	{
	  /* Clear token.  */
	  rclex_tok_pos = 0;
	  rclex_tok[0] = 0;
	  
	  if ((ch = FUNC8 ()) == -1)
	    return -1;
	  if (ch == '\n')
	    ++rc_lineno;
	}
      while (ch <= 0x20);

      switch (ch)
	{
	case '#':
	  while ((ch = FUNC7 ()) != -1 && ch != '\n')
	    FUNC8 ();
	  FUNC3 ();
	  ch = IGNORED_TOKEN;
	  break;
	
	case '{':
	  ch = FUNC0 (BEG);
	  break;
	
	case '}':
	  ch = FUNC0 (END);
	  break;
	
	case '0': case '1': case '2': case '3': case '4':
	case '5': case '6': case '7': case '8': case '9':
	  yylval.i.val = FUNC13 (ch);
	  yylval.i.dword = 0;
	  switch (FUNC7 ())
	    {
	    case 'l': case 'L':
	      FUNC8 ();
	      yylval.i.dword = 1;
	      break;
	    }
	  ch = FUNC0 (NUMBER);
	  break;
	case '"':
	  FUNC9 ();
	  ch = FUNC0 ((! rcdata_mode ? QUOTEDSTRING : SIZEDSTRING));
	  if (ch == IGNORED_TOKEN)
	    break;
	  s = FUNC5 (&length);
	  if (! rcdata_mode)
	    yylval.s = s;
	  else
	    {
	      yylval.ss.length = length;
	      yylval.ss.s = s;
	  }
	  break;
	case 'L': case 'l':
	  if (FUNC7 () == '"')
	    {
	      FUNC8 ();
	      FUNC9 ();
	      ch = FUNC0 ((! rcdata_mode ? QUOTEDUNISTRING : SIZEDUNISTRING));
	      if (ch == IGNORED_TOKEN)
		break;
	      us = FUNC6 (&length);
	      if (! rcdata_mode)
		yylval.uni = us;
	      else
	        {
		  yylval.suni.length = length;
		  yylval.suni.s = us;
	      }
	      break;
	    }
	  /* Fall through.  */
	default:
	  if (FUNC2 (ch) || ch=='$')
	    {
	      while ((ch = FUNC7 ()) != -1 && (FUNC1 (ch) || ch == '$' || ch == '.'))
		FUNC8 ();
	      ch = FUNC0 (FUNC11 (rclex_tok));
	      if (ch == STRING)
		{
		  s = FUNC4 (FUNC16 (rclex_tok) + 1);
		  FUNC15 (s, rclex_tok);
		  yylval.s = s;
		}
	      else if (ch == BLOCK)
		{
		  const char *hs = NULL;

		  switch (FUNC17 ())
		  {
		  case STRING:
		  case QUOTEDSTRING:
		    hs = yylval.s;
		    break;
		  case SIZEDSTRING:
		    hs = yylval.s = yylval.ss.s;
		    break;
		  }
		  if (! hs)
		    {
		      FUNC12 ("BLOCK expects a string as argument.");
		      ch = IGNORED_TOKEN;
		    }
		  else if (! FUNC14 (hs, "StringFileInfo"))
		    ch = BLOCKSTRINGFILEINFO;
		  else if (! FUNC14 (hs, "VarFileInfo"))
		    ch = BLOCKVARFILEINFO;
		}
	      break;
	    }
	  ch = FUNC0 (ch);
	  break;
	}
    }
  while (ch == IGNORED_TOKEN);

  return ch;
}
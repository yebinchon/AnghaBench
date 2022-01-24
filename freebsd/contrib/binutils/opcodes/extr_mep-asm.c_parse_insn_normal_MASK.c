#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {char* (* parse_operand ) (TYPE_1__*,int /*<<< orphan*/ ,char const**,int /*<<< orphan*/ *) ;} ;
typedef  scalar_t__ CGEN_SYNTAX_CHAR_TYPE ;
typedef  int /*<<< orphan*/  CGEN_SYNTAX ;
typedef  int /*<<< orphan*/  CGEN_INSN ;
typedef  int /*<<< orphan*/  CGEN_FIELDS ;
typedef  TYPE_1__* CGEN_CPU_DESC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 char* FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/  const*) ; 
 int FUNC3 (scalar_t__ const) ; 
 scalar_t__ FUNC4 (scalar_t__ const) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__ const) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__ const) ; 
 scalar_t__* FUNC7 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC8 (char const) ; 
 scalar_t__ FUNC9 (char const) ; 
 char const* FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (char*,char const*,int,...) ; 
 char* FUNC14 (TYPE_1__*,int /*<<< orphan*/ ,char const**,int /*<<< orphan*/ *) ; 

__attribute__((used)) static const char *
FUNC15 (CGEN_CPU_DESC cd,
		   const CGEN_INSN *insn,
		   const char **strp,
		   CGEN_FIELDS *fields)
{
  /* ??? Runtime added insns not handled yet.  */
  const CGEN_SYNTAX *syntax = FUNC2 (insn);
  const char *str = *strp;
  const char *errmsg;
  const char *p;
  const CGEN_SYNTAX_CHAR_TYPE * syn;
#ifdef CGEN_MNEMONIC_OPERANDS
  /* FIXME: wip */
  int past_opcode_p;
#endif

  /* For now we assume the mnemonic is first (there are no leading operands).
     We can parse it without needing to set up operand parsing.
     GAS's input scrubber will ensure mnemonics are lowercase, but we may
     not be called from GAS.  */
  p = FUNC1 (insn);
  while (*p && FUNC9 (*p) == FUNC9 (*str))
    ++p, ++str;

  if (* p)
    return FUNC10("unrecognized instruction");

#ifndef CGEN_MNEMONIC_OPERANDS
  if (* str && ! FUNC8 (* str))
    return FUNC10("unrecognized instruction");
#endif

  FUNC0 (cd);
  FUNC12 (cd);
#ifdef CGEN_MNEMONIC_OPERANDS
  past_opcode_p = 0;
#endif

  /* We don't check for (*str != '\0') here because we want to parse
     any trailing fake arguments in the syntax string.  */
  syn = FUNC7 (syntax);

  /* Mnemonics come first for now, ensure valid string.  */
  if (! FUNC6 (* syn))
    FUNC11 ();

  ++syn;

  while (* syn != 0)
    {
      /* Non operand chars must match exactly.  */
      if (FUNC4 (* syn))
	{
	  /* FIXME: While we allow for non-GAS callers above, we assume the
	     first char after the mnemonic part is a space.  */
	  /* FIXME: We also take inappropriate advantage of the fact that
	     GAS's input scrubber will remove extraneous blanks.  */
	  if (FUNC9 (*str) == FUNC9 (FUNC3 (* syn)))
	    {
#ifdef CGEN_MNEMONIC_OPERANDS
	      if (CGEN_SYNTAX_CHAR(* syn) == ' ')
		past_opcode_p = 1;
#endif
	      ++ syn;
	      ++ str;
	    }
	  else if (*str)
	    {
	      /* Syntax char didn't match.  Can't be this insn.  */
	      static char msg [80];

	      /* xgettext:c-format */
	      FUNC13 (msg, FUNC10("syntax error (expected char `%c', found `%c')"),
		       FUNC3(*syn), *str);
	      return msg;
	    }
	  else
	    {
	      /* Ran out of input.  */
	      static char msg [80];

	      /* xgettext:c-format */
	      FUNC13 (msg, FUNC10("syntax error (expected char `%c', found end of instruction)"),
		       FUNC3(*syn));
	      return msg;
	    }
	  continue;
	}

      /* We have an operand of some sort.  */
      errmsg = cd->parse_operand (cd, FUNC5 (*syn),
					  &str, fields);
      if (errmsg)
	return errmsg;

      /* Done with this operand, continue with next one.  */
      ++ syn;
    }

  /* If we're at the end of the syntax string, we're done.  */
  if (* syn == 0)
    {
      /* FIXME: For the moment we assume a valid `str' can only contain
	 blanks now.  IE: We needn't try again with a longer version of
	 the insn and it is assumed that longer versions of insns appear
	 before shorter ones (eg: lsr r2,r3,1 vs lsr r2,r3).  */
      while (FUNC8 (* str))
	++ str;

      if (* str != '\0')
	return FUNC10("junk at end of line"); /* FIXME: would like to include `str' */

      return NULL;
    }

  /* We couldn't parse it.  */
  return FUNC10("unrecognized instruction");
}
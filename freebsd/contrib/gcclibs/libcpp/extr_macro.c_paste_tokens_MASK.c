#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  source_location ;
struct TYPE_22__ {scalar_t__ type; int /*<<< orphan*/  flags; int /*<<< orphan*/  src_loc; } ;
typedef  TYPE_2__ cpp_token ;
struct TYPE_23__ {TYPE_1__* buffer; int /*<<< orphan*/  cur_token; } ;
typedef  TYPE_3__ cpp_reader ;
struct TYPE_21__ {scalar_t__ cur; scalar_t__ rlimit; } ;

/* Variables and functions */
 scalar_t__ CLK_ASM ; 
 scalar_t__ CPP_DIV ; 
 int /*<<< orphan*/  CPP_DL_ERROR ; 
 scalar_t__ CPP_EQ ; 
 scalar_t__ FUNC0 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PASTE_LEFT ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 TYPE_2__* FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 scalar_t__ FUNC6 (unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ ,char*,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,unsigned char*,int,int) ; 
 unsigned char* FUNC9 (TYPE_3__*,TYPE_2__ const*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,TYPE_2__ const*) ; 
 int FUNC11 (TYPE_2__ const*) ; 
 int /*<<< orphan*/  lang ; 

__attribute__((used)) static bool
FUNC12 (cpp_reader *pfile, const cpp_token **plhs, const cpp_token *rhs)
{
  unsigned char *buf, *end, *lhsend;
  cpp_token *lhs;
  unsigned int len;

  len = FUNC11 (*plhs) + FUNC11 (rhs) + 1;
  buf = (unsigned char *) FUNC6 (len);
  end = lhsend = FUNC9 (pfile, *plhs, buf, false);

  /* Avoid comment headers, since they are still processed in stage 3.
     It is simpler to insert a space here, rather than modifying the
     lexer to ignore comments in some circumstances.  Simply returning
     false doesn't work, since we want to clear the PASTE_LEFT flag.  */
  if ((*plhs)->type == CPP_DIV && rhs->type != CPP_EQ)
    *end++ = ' ';
  end = FUNC9 (pfile, rhs, end, false);
  *end = '\n';

  FUNC8 (pfile, buf, end - buf, /* from_stage3 */ true);
  FUNC2 (pfile);

  /* Set pfile->cur_token as required by _cpp_lex_direct.  */
  pfile->cur_token = FUNC5 (pfile);
  lhs = FUNC3 (pfile);
  if (pfile->buffer->cur != pfile->buffer->rlimit)
    {
      source_location saved_loc = lhs->src_loc;

      FUNC4 (pfile);
      FUNC1 (pfile, 1);
      *lhsend = '\0';

      /* We have to remove the PASTE_LEFT flag from the old lhs, but
	 we want to keep the new location.  */
      *lhs = **plhs;
      *plhs = lhs;
      lhs->src_loc = saved_loc;
      lhs->flags &= ~PASTE_LEFT;

      /* Mandatory error for all apart from assembler.  */
      if (FUNC0 (pfile, lang) != CLK_ASM)
	FUNC7 (pfile, CPP_DL_ERROR,
	 "pasting \"%s\" and \"%s\" does not give a valid preprocessing token",
		   buf, FUNC10 (pfile, rhs));
      return false;
    }

  *plhs = lhs;
  FUNC4 (pfile);
  return true;
}